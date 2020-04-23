# frozen_string_literal: true

require "spec_helper"

RSpec.describe CoronavirusForm::ContactDetailsController, type: :controller do
  include_examples "redirections"
  include_examples "session expiry"

  let(:current_template) { "coronavirus_form/contact_details" }
  let(:session_key) { :contact_details }

  describe "GET show" do
    it "renders the form" do
      session[:live_in_england] = I18n.t("coronavirus_form.questions.live_in_england.options.option_yes.label")

      get :show
      expect(response).to render_template(current_template)
    end
  end

  describe "POST submit" do
    let(:params) do
      {
        "phone_number_calls" => "01234 578 890<script></script>",
        "phone_number_texts" => "01876 543 210",
        "email" => "<script></script>tester@example.org",
      }
    end

    let(:contact_details) do
      {
        phone_number_calls: "01234 578 890",
        phone_number_texts: "01876 543 210",
        email: "tester@example.org",
      }
    end

    it "sets session variables as sanitize symbolized keys" do
      post :submit, params: params
      expect(session[session_key]).to eq contact_details
    end

    it "strips html characters" do
      params = {
        "phone_number_calls" => '<a href="https://www.example.com">01234567890</a>',
        "phone_number_texts" => '<a href="https://www.example.com">01234567890</a>',
      }

      contact_details = {
        phone_number_calls: "01234567890",
        phone_number_texts: "01234567890",
        email: nil,
      }

      post :submit, params: params
      expect(session[session_key]).to eq contact_details
    end

    it "redirects to next step for a permitted response" do
      post :submit, params: params
      expect(response).to redirect_to(know_nhs_number_path)
    end

    it "does not move to next step with an invalid phone number for calls" do
      post :submit, params: { "phone_number_calls": "1234" }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(response).to render_template(current_template)
    end

    it "does not move to next step with an invalid phone number for text messages" do
      post :submit, params: { "phone_number_calls": "1234" }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(response).to render_template(current_template)
    end

    it "does not move to next step with an invalid email address" do
      post :submit, params: { "email": "not-a-valid-email" }
      expect(response).to have_http_status(:unprocessable_entity)
      expect(response).to render_template(current_template)
    end

    it "redirects to check your answers if check your answers previously seen" do
      session[:check_answers_seen] = true
      post :submit, params: params

      expect(response).to redirect_to(check_your_answers_path)
    end
  end
end
