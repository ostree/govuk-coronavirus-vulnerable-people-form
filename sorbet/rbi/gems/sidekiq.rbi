# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/sidekiq/all/sidekiq.rbi
#
# sidekiq-6.0.7

module Sidekiq
  def self.average_scheduled_poll_interval=(interval); end
  def self.client_middleware; end
  def self.configure_client; end
  def self.configure_server; end
  def self.death_handlers; end
  def self.default_server_middleware; end
  def self.default_worker_options; end
  def self.default_worker_options=(hash); end
  def self.dump_json(object); end
  def self.error_handlers; end
  def self.load_json(string); end
  def self.log_formatter; end
  def self.log_formatter=(log_formatter); end
  def self.logger; end
  def self.logger=(logger); end
  def self.on(event, &block); end
  def self.options; end
  def self.options=(opts); end
  def self.pro?; end
  def self.redis; end
  def self.redis=(hash); end
  def self.redis_info; end
  def self.redis_pool; end
  def self.server?; end
  def self.server_middleware; end
end
module Sidekiq::Context
  def self.current; end
  def self.with(hash); end
end
module Sidekiq::LoggingUtils
  def add(severity, message = nil, progname = nil, &block); end
  def debug?; end
  def error?; end
  def fatal?; end
  def info?; end
  def level; end
  def local_level; end
  def local_level=(level); end
  def log_at(level); end
  def warn?; end
end
class Sidekiq::Logger < Logger
  def initialize(*args, **kwargs); end
  include Sidekiq::LoggingUtils
end
module Sidekiq::Logger::Formatters
end
class Sidekiq::Logger::Formatters::Base < Logger::Formatter
  def ctx; end
  def format_context; end
  def tid; end
end
class Sidekiq::Logger::Formatters::Pretty < Sidekiq::Logger::Formatters::Base
  def call(severity, time, program_name, message); end
end
class Sidekiq::Logger::Formatters::WithoutTimestamp < Sidekiq::Logger::Formatters::Pretty
  def call(severity, time, program_name, message); end
end
class Sidekiq::Logger::Formatters::JSON < Sidekiq::Logger::Formatters::Base
  def call(severity, time, program_name, message); end
end
module Sidekiq::Middleware
end
class Sidekiq::Middleware::Chain
  def add(klass, *args); end
  def clear; end
  def each(&block); end
  def empty?; end
  def entries; end
  def exists?(klass); end
  def initialize; end
  def initialize_copy(copy); end
  def insert_after(oldklass, newklass, *args); end
  def insert_before(oldklass, newklass, *args); end
  def invoke(*args); end
  def prepend(klass, *args); end
  def remove(klass); end
  def retrieve; end
  include Enumerable
end
class Sidekiq::Middleware::Entry
  def initialize(klass, *args); end
  def klass; end
  def make_new; end
end
class Sidekiq::Client
  def atomic_push(conn, payloads); end
  def initialize(redis_pool = nil); end
  def middleware(&block); end
  def normalize_item(item); end
  def normalized_hash(item_class); end
  def process_single(worker_class, item); end
  def push(item); end
  def push_bulk(items); end
  def raw_push(payloads); end
  def redis_pool; end
  def redis_pool=(arg0); end
  def self.enqueue(klass, *args); end
  def self.enqueue_in(interval, klass, *args); end
  def self.enqueue_to(queue, klass, *args); end
  def self.enqueue_to_in(queue, interval, klass, *args); end
  def self.push(item); end
  def self.push_bulk(items); end
  def self.via(pool); end
end
module Sidekiq::Worker
  def jid; end
  def jid=(arg0); end
  def logger; end
  def self.included(base); end
end
module Sidekiq::Worker::Options
  def self.included(base); end
end
module Sidekiq::Worker::Options::ClassMethods
  def get_sidekiq_options; end
  def sidekiq_class_attribute(*attrs); end
  def sidekiq_options(opts = nil); end
  def sidekiq_retries_exhausted(&block); end
  def sidekiq_retry_in(&block); end
end
class Sidekiq::Worker::Setter
  def initialize(klass, opts); end
  def perform_async(*args); end
  def perform_at(interval, *args); end
  def perform_in(interval, *args); end
  def set(options); end
end
module Sidekiq::Worker::ClassMethods
  def client_push(item); end
  def delay(*args); end
  def delay_for(*args); end
  def delay_until(*args); end
  def perform_async(*args); end
  def perform_at(interval, *args); end
  def perform_in(interval, *args); end
  def set(options); end
  def sidekiq_options(opts = nil); end
end
class Sidekiq::RedisConnection
  def self.build_client(options); end
  def self.client_opts(options); end
  def self.create(options = nil); end
  def self.determine_redis_provider; end
  def self.log_info(options); end
  def self.verify_sizing(size, concurrency); end
end
module Sidekiq::Extensions
  def self.enable_delay!; end
end
module Sidekiq::Extensions::PsychAutoload
  def resolve_class(klass_name); end
end
class Sidekiq::Rails < Rails::Engine
end
class Sidekiq::Rails::Reloader
  def call; end
  def initialize(app = nil); end
  def inspect; end
end
class Sidekiq::Shutdown < Interrupt
end
class Sidekiq::Stats
  def dead_size; end
  def default_queue_latency; end
  def enqueued; end
  def failed; end
  def fetch_stats!; end
  def initialize; end
  def processed; end
  def processes_size; end
  def queues; end
  def reset(*stats); end
  def retry_size; end
  def scheduled_size; end
  def stat(s); end
  def workers_size; end
end
class Sidekiq::Stats::Queues
  def lengths; end
end
class Sidekiq::Stats::History
  def date_stat_hash(stat); end
  def failed; end
  def initialize(days_previous, start_date = nil); end
  def processed; end
end
class Sidekiq::Queue
  def clear; end
  def each; end
  def find_job(jid); end
  def initialize(name = nil); end
  def latency; end
  def name; end
  def paused?; end
  def self.all; end
  def size; end
  include Enumerable
end
class Sidekiq::Job
  def [](name); end
  def args; end
  def created_at; end
  def delete; end
  def display_args; end
  def display_class; end
  def enqueued_at; end
  def error_backtrace; end
  def initialize(item, queue_name = nil); end
  def item; end
  def jid; end
  def klass; end
  def latency; end
  def parse(item); end
  def queue; end
  def safe_load(content, default); end
  def tags; end
  def uncompress_backtrace(backtrace); end
  def value; end
end
class Sidekiq::SortedEntry < Sidekiq::Job
  def add_to_queue; end
  def at; end
  def delete; end
  def error?; end
  def initialize(parent, score, item); end
  def kill; end
  def parent; end
  def remove_job; end
  def reschedule(at); end
  def retry; end
  def score; end
end
class Sidekiq::SortedSet
  def clear; end
  def initialize(name); end
  def name; end
  def scan(match, count = nil); end
  def size; end
  include Enumerable
end
class Sidekiq::JobSet < Sidekiq::SortedSet
  def delete(score, jid); end
  def delete_by_jid(score, jid); end
  def delete_by_value(name, value); end
  def each; end
  def fetch(score, jid = nil); end
  def find_job(jid); end
  def schedule(timestamp, message); end
end
class Sidekiq::ScheduledSet < Sidekiq::JobSet
  def initialize; end
end
class Sidekiq::RetrySet < Sidekiq::JobSet
  def initialize; end
  def kill_all; end
  def retry_all; end
end
class Sidekiq::DeadSet < Sidekiq::JobSet
  def initialize; end
  def kill(message, opts = nil); end
  def retry_all; end
  def self.max_jobs; end
  def self.timeout; end
end
class Sidekiq::ProcessSet
  def cleanup; end
  def each; end
  def initialize(clean_plz = nil); end
  def leader; end
  def size; end
  include Enumerable
end
class Sidekiq::Process
  def [](key); end
  def dump_threads; end
  def identity; end
  def initialize(hash); end
  def labels; end
  def quiet!; end
  def signal(sig); end
  def stop!; end
  def stopping?; end
  def tag; end
end
class Sidekiq::Workers
  def each; end
  def size; end
  include Enumerable
end
