# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/request_store/all/request_store.rbi
#
# request_store-1.5.0

module RequestStore
  def self.[](key); end
  def self.[]=(key, value); end
  def self.active?; end
  def self.begin!; end
  def self.clear!; end
  def self.delete(key, &block); end
  def self.end!; end
  def self.exist?(key); end
  def self.fetch(key); end
  def self.read(key); end
  def self.store; end
  def self.store=(store); end
  def self.write(key, value); end
end
class RequestStore::Middleware
  def call(env); end
  def initialize(app); end
end
class RequestStore::Railtie < Rails::Railtie
end
