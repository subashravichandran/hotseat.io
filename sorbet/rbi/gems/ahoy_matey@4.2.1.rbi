# typed: strict

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ahoy_matey` gem.
# Please instead update this file by running `bin/tapioca gem ahoy_matey`.

# source://ahoy_matey//lib/ahoy/utils.rb#1
module Ahoy
  # source://ahoy_matey//lib/ahoy.rb#57
  def api; end

  # source://ahoy_matey//lib/ahoy.rb#57
  def api=(val); end

  # source://ahoy_matey//lib/ahoy.rb#60
  def api_only; end

  # source://ahoy_matey//lib/ahoy.rb#60
  def api_only=(val); end

  # source://ahoy_matey//lib/ahoy.rb#79
  def bot_detection_version; end

  # source://ahoy_matey//lib/ahoy.rb#79
  def bot_detection_version=(val); end

  # source://ahoy_matey//lib/ahoy.rb#34
  def cookie_domain; end

  # source://ahoy_matey//lib/ahoy.rb#34
  def cookie_domain=(val); end

  # source://ahoy_matey//lib/ahoy.rb#36
  def cookie_options; end

  # source://ahoy_matey//lib/ahoy.rb#36
  def cookie_options=(val); end

  # source://ahoy_matey//lib/ahoy.rb#30
  def cookies; end

  # source://ahoy_matey//lib/ahoy.rb#30
  def cookies=(val); end

  # source://ahoy_matey//lib/ahoy.rb#74
  def exclude_method; end

  # source://ahoy_matey//lib/ahoy.rb#74
  def exclude_method=(val); end

  # source://ahoy_matey//lib/ahoy.rb#45
  def geocode; end

  # source://ahoy_matey//lib/ahoy.rb#45
  def geocode=(val); end

  # source://ahoy_matey//lib/ahoy.rb#54
  def job_queue; end

  # source://ahoy_matey//lib/ahoy.rb#54
  def job_queue=(val); end

  # source://ahoy_matey//lib/ahoy.rb#91
  def logger; end

  # source://ahoy_matey//lib/ahoy.rb#91
  def logger=(val); end

  # source://ahoy_matey//lib/ahoy.rb#85
  def mask_ips; end

  # source://ahoy_matey//lib/ahoy.rb#85
  def mask_ips=(val); end

  # source://ahoy_matey//lib/ahoy.rb#48
  def max_content_length; end

  # source://ahoy_matey//lib/ahoy.rb#48
  def max_content_length=(val); end

  # source://ahoy_matey//lib/ahoy.rb#51
  def max_events_per_request; end

  # source://ahoy_matey//lib/ahoy.rb#51
  def max_events_per_request=(val); end

  # source://ahoy_matey//lib/ahoy.rb#66
  def preserve_callbacks; end

  # source://ahoy_matey//lib/ahoy.rb#66
  def preserve_callbacks=(val); end

  # source://ahoy_matey//lib/ahoy.rb#63
  def protect_from_forgery; end

  # source://ahoy_matey//lib/ahoy.rb#63
  def protect_from_forgery=(val); end

  # source://ahoy_matey//lib/ahoy.rb#42
  def quiet; end

  # source://ahoy_matey//lib/ahoy.rb#42
  def quiet=(val); end

  # source://ahoy_matey//lib/ahoy.rb#39
  def server_side_visits; end

  # source://ahoy_matey//lib/ahoy.rb#39
  def server_side_visits=(val); end

  # source://ahoy_matey//lib/ahoy.rb#82
  def token_generator; end

  # source://ahoy_matey//lib/ahoy.rb#82
  def token_generator=(val); end

  # source://ahoy_matey//lib/ahoy.rb#76
  def track_bots; end

  # source://ahoy_matey//lib/ahoy.rb#76
  def track_bots=(val); end

  # source://ahoy_matey//lib/ahoy.rb#88
  def user_agent_parser; end

  # source://ahoy_matey//lib/ahoy.rb#88
  def user_agent_parser=(val); end

  # source://ahoy_matey//lib/ahoy.rb#69
  def user_method; end

  # source://ahoy_matey//lib/ahoy.rb#69
  def user_method=(val); end

  # source://ahoy_matey//lib/ahoy.rb#24
  def visit_duration; end

  # source://ahoy_matey//lib/ahoy.rb#24
  def visit_duration=(val); end

  # source://ahoy_matey//lib/ahoy.rb#27
  def visitor_duration; end

  # source://ahoy_matey//lib/ahoy.rb#27
  def visitor_duration=(val); end

  class << self
    # source://ahoy_matey//lib/ahoy.rb#57
    def api; end

    # source://ahoy_matey//lib/ahoy.rb#57
    def api=(val); end

    # source://ahoy_matey//lib/ahoy.rb#60
    def api_only; end

    # source://ahoy_matey//lib/ahoy.rb#60
    def api_only=(val); end

    # source://ahoy_matey//lib/ahoy.rb#79
    def bot_detection_version; end

    # source://ahoy_matey//lib/ahoy.rb#79
    def bot_detection_version=(val); end

    # source://ahoy_matey//lib/ahoy.rb#34
    def cookie_domain; end

    # source://ahoy_matey//lib/ahoy.rb#34
    def cookie_domain=(val); end

    # source://ahoy_matey//lib/ahoy.rb#36
    def cookie_options; end

    # source://ahoy_matey//lib/ahoy.rb#36
    def cookie_options=(val); end

    # source://ahoy_matey//lib/ahoy.rb#30
    def cookies; end

    # source://ahoy_matey//lib/ahoy.rb#30
    def cookies=(val); end

    # source://ahoy_matey//lib/ahoy.rb#74
    def exclude_method; end

    # source://ahoy_matey//lib/ahoy.rb#74
    def exclude_method=(val); end

    # source://ahoy_matey//lib/ahoy.rb#45
    def geocode; end

    # source://ahoy_matey//lib/ahoy.rb#45
    def geocode=(val); end

    # source://ahoy_matey//lib/ahoy.rb#108
    def instance; end

    # source://ahoy_matey//lib/ahoy.rb#112
    def instance=(value); end

    # source://ahoy_matey//lib/ahoy.rb#54
    def job_queue; end

    # source://ahoy_matey//lib/ahoy.rb#54
    def job_queue=(val); end

    # source://ahoy_matey//lib/ahoy.rb#93
    def log(message); end

    # source://ahoy_matey//lib/ahoy.rb#91
    def logger; end

    # source://ahoy_matey//lib/ahoy.rb#91
    def logger=(val); end

    # source://ahoy_matey//lib/ahoy.rb#97
    def mask_ip(ip); end

    # source://ahoy_matey//lib/ahoy.rb#85
    def mask_ips; end

    # source://ahoy_matey//lib/ahoy.rb#85
    def mask_ips=(val); end

    # source://ahoy_matey//lib/ahoy.rb#48
    def max_content_length; end

    # source://ahoy_matey//lib/ahoy.rb#48
    def max_content_length=(val); end

    # source://ahoy_matey//lib/ahoy.rb#51
    def max_events_per_request; end

    # source://ahoy_matey//lib/ahoy.rb#51
    def max_events_per_request=(val); end

    # source://ahoy_matey//lib/ahoy.rb#66
    def preserve_callbacks; end

    # source://ahoy_matey//lib/ahoy.rb#66
    def preserve_callbacks=(val); end

    # source://ahoy_matey//lib/ahoy.rb#63
    def protect_from_forgery; end

    # source://ahoy_matey//lib/ahoy.rb#63
    def protect_from_forgery=(val); end

    # source://ahoy_matey//lib/ahoy.rb#42
    def quiet; end

    # source://ahoy_matey//lib/ahoy.rb#42
    def quiet=(val); end

    # source://ahoy_matey//lib/ahoy.rb#39
    def server_side_visits; end

    # source://ahoy_matey//lib/ahoy.rb#39
    def server_side_visits=(val); end

    # source://ahoy_matey//lib/ahoy.rb#82
    def token_generator; end

    # source://ahoy_matey//lib/ahoy.rb#82
    def token_generator=(val); end

    # source://ahoy_matey//lib/ahoy.rb#76
    def track_bots; end

    # source://ahoy_matey//lib/ahoy.rb#76
    def track_bots=(val); end

    # source://ahoy_matey//lib/ahoy.rb#88
    def user_agent_parser; end

    # source://ahoy_matey//lib/ahoy.rb#88
    def user_agent_parser=(val); end

    # source://ahoy_matey//lib/ahoy.rb#69
    def user_method; end

    # source://ahoy_matey//lib/ahoy.rb#69
    def user_method=(val); end

    # source://ahoy_matey//lib/ahoy.rb#24
    def visit_duration; end

    # source://ahoy_matey//lib/ahoy.rb#24
    def visit_duration=(val); end

    # source://ahoy_matey//lib/ahoy.rb#27
    def visitor_duration; end

    # source://ahoy_matey//lib/ahoy.rb#27
    def visitor_duration=(val); end
  end
end

# source://ahoy_matey//lib/ahoy/base_store.rb#2
class Ahoy::BaseStore
  # @return [BaseStore] a new instance of BaseStore
  #
  # source://ahoy_matey//lib/ahoy/base_store.rb#5
  def initialize(options); end

  # source://ahoy_matey//lib/ahoy/base_store.rb#18
  def authenticate(data); end

  # @return [Boolean]
  #
  # source://ahoy_matey//lib/ahoy/base_store.rb#38
  def exclude?; end

  # source://ahoy_matey//lib/ahoy/base_store.rb#42
  def generate_id; end

  # source://ahoy_matey//lib/ahoy/base_store.rb#15
  def geocode(data); end

  # source://ahoy_matey//lib/ahoy/base_store.rb#12
  def track_event(data); end

  # source://ahoy_matey//lib/ahoy/base_store.rb#9
  def track_visit(data); end

  # source://ahoy_matey//lib/ahoy/base_store.rb#24
  def user; end

  # Sets the attribute user
  #
  # @param value the value to set the attribute user to.
  #
  # source://ahoy_matey//lib/ahoy/base_store.rb#3
  def user=(_arg0); end

  # source://ahoy_matey//lib/ahoy/base_store.rb#21
  def visit; end

  # source://ahoy_matey//lib/ahoy/base_store.rb#46
  def visit_or_create; end

  protected

  # source://ahoy_matey//lib/ahoy/base_store.rb#97
  def ahoy; end

  # @return [Boolean]
  #
  # source://ahoy_matey//lib/ahoy/base_store.rb#52
  def bot?; end

  # source://ahoy_matey//lib/ahoy/base_store.rb#93
  def controller; end

  # @return [Boolean]
  #
  # source://ahoy_matey//lib/ahoy/base_store.rb#77
  def exclude_by_method?; end

  # source://ahoy_matey//lib/ahoy/base_store.rb#89
  def request; end
end

# source://ahoy_matey//lib/ahoy/controller.rb#2
module Ahoy::Controller
  # source://ahoy_matey//lib/ahoy/controller.rb#13
  def ahoy; end

  # source://ahoy_matey//lib/ahoy/controller.rb#17
  def current_visit; end

  # source://ahoy_matey//lib/ahoy/controller.rb#21
  def set_ahoy_cookies; end

  # source://ahoy_matey//lib/ahoy/controller.rb#41
  def set_ahoy_request_store; end

  # source://ahoy_matey//lib/ahoy/controller.rb#31
  def track_ahoy_visit; end

  class << self
    # @private
    #
    # source://ahoy_matey//lib/ahoy/controller.rb#3
    def included(base); end
  end
end

# source://ahoy_matey//lib/ahoy/database_store.rb#2
class Ahoy::DatabaseStore < ::Ahoy::BaseStore
  # source://ahoy_matey//lib/ahoy/database_store.rb#43
  def authenticate(_); end

  # source://ahoy_matey//lib/ahoy/database_store.rb#30
  def geocode(data); end

  # source://ahoy_matey//lib/ahoy/database_store.rb#14
  def track_event(data); end

  # source://ahoy_matey//lib/ahoy/database_store.rb#3
  def track_visit(data); end

  # source://ahoy_matey//lib/ahoy/database_store.rb#54
  def visit; end

  # if we don't have a visit, let's try to create one first
  #
  # source://ahoy_matey//lib/ahoy/database_store.rb#67
  def visit_or_create(started_at: T.unsafe(nil)); end

  protected

  # source://ahoy_matey//lib/ahoy/database_store.rb#78
  def event_model; end

  # source://ahoy_matey//lib/ahoy/database_store.rb#82
  def slice_data(model, data); end

  # @return [Boolean]
  #
  # source://ahoy_matey//lib/ahoy/database_store.rb#87
  def unique_exception?(e); end

  # source://ahoy_matey//lib/ahoy/database_store.rb#74
  def visit_model; end
end

# source://ahoy_matey//lib/ahoy/engine.rb#2
class Ahoy::Engine < ::Rails::Engine
  class << self
    # source://activesupport/7.0.4.3/lib/active_support/callbacks.rb#68
    def __callbacks; end
  end
end

# source://ahoy_matey//lib/ahoy/engine.rb#12
Ahoy::Engine::AHOY_PREFIX = T.let(T.unsafe(nil), String)

class Ahoy::GeocodeJob < ::ActiveJob::Base
  def perform(visit); end

  class << self
    # source://activejob/7.0.4.3/lib/active_job/queue_name.rb#56
    def queue_name; end
  end
end

class Ahoy::GeocodeV2Job < ::ActiveJob::Base
  def perform(visit_token, ip); end

  class << self
    # source://activejob/7.0.4.3/lib/active_job/queue_name.rb#56
    def queue_name; end
  end
end

# source://ahoy_matey//lib/ahoy/helper.rb#2
module Ahoy::Helper
  # source://ahoy_matey//lib/ahoy/helper.rb#3
  def amp_event(name, properties = T.unsafe(nil)); end
end

# source://ahoy_matey//lib/ahoy/model.rb#2
module Ahoy::Model
  # source://ahoy_matey//lib/ahoy/model.rb#3
  def visitable(name = T.unsafe(nil), **options); end
end

# backward compatibility
#
# source://ahoy_matey//lib/ahoy/query_methods.rb#88
Ahoy::Properties = Ahoy::QueryMethods

# source://ahoy_matey//lib/ahoy/query_methods.rb#2
module Ahoy::QueryMethods
  extend ::ActiveSupport::Concern

  mixes_in_class_methods ::Ahoy::QueryMethods::ClassMethods
end

# source://ahoy_matey//lib/ahoy/query_methods.rb#5
module Ahoy::QueryMethods::ClassMethods
  # source://ahoy_matey//lib/ahoy/query_methods.rb#48
  def group_prop(*props); end

  # source://ahoy_matey//lib/ahoy/query_methods.rb#6
  def where_event(name, properties = T.unsafe(nil)); end

  # source://ahoy_matey//lib/ahoy/query_methods.rb#10
  def where_properties(properties); end

  # source://ahoy_matey//lib/ahoy/query_methods.rb#10
  def where_props(properties); end
end

# source://ahoy_matey//lib/ahoy/tracker.rb#4
class Ahoy::Tracker
  # @return [Tracker] a new instance of Tracker
  #
  # source://ahoy_matey//lib/ahoy/tracker.rb#9
  def initialize(**options); end

  # source://ahoy_matey//lib/ahoy/tracker.rb#76
  def authenticate(user); end

  # Returns the value of attribute controller.
  #
  # source://ahoy_matey//lib/ahoy/tracker.rb#7
  def controller; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#65
  def geocode(data); end

  # @return [Boolean]
  #
  # source://ahoy_matey//lib/ahoy/tracker.rb#101
  def new_visit?; end

  # @return [Boolean]
  #
  # source://ahoy_matey//lib/ahoy/tracker.rb#105
  def new_visitor?; end

  # Returns the value of attribute request.
  #
  # source://ahoy_matey//lib/ahoy/tracker.rb#7
  def request; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#137
  def reset; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#142
  def reset_visit; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#109
  def set_visit_cookie; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#113
  def set_visitor_cookie; end

  # can't use keyword arguments here
  #
  # source://ahoy_matey//lib/ahoy/tracker.rb#19
  def track(name, properties = T.unsafe(nil), options = T.unsafe(nil)); end

  # source://ahoy_matey//lib/ahoy/tracker.rb#39
  def track_visit(defer: T.unsafe(nil), started_at: T.unsafe(nil)); end

  # source://ahoy_matey//lib/ahoy/tracker.rb#119
  def user; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#93
  def visit; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#127
  def visit_id; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#97
  def visit_or_create; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#123
  def visit_properties; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#127
  def visit_token; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#132
  def visitor_id; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#132
  def visitor_token; end

  protected

  # @return [Boolean]
  #
  # source://ahoy_matey//lib/ahoy/tracker.rb#150
  def api?; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#280
  def debug(message); end

  # source://ahoy_matey//lib/ahoy/tracker.rb#175
  def delete_cookie(name); end

  # source://ahoy_matey//lib/ahoy/tracker.rb#275
  def ensure_token(token); end

  # @return [Boolean]
  #
  # source://ahoy_matey//lib/ahoy/tracker.rb#187
  def exclude?; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#225
  def existing_visit_token; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#234
  def existing_visitor_token; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#203
  def generate_id; end

  # private, but used by API
  #
  # @return [Boolean]
  #
  # source://ahoy_matey//lib/ahoy/tracker.rb#155
  def missing_params?; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#194
  def report_exception(e); end

  # source://ahoy_matey//lib/ahoy/tracker.rb#163
  def set_cookie(name, value, duration = T.unsafe(nil), use_domain = T.unsafe(nil)); end

  # source://ahoy_matey//lib/ahoy/tracker.rb#179
  def trusted_time(time = T.unsafe(nil)); end

  # source://ahoy_matey//lib/ahoy/tracker.rb#243
  def visit_anonymity_set; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#251
  def visit_cookie; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#259
  def visit_header; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#267
  def visit_param; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#207
  def visit_token_helper; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#247
  def visitor_anonymity_set; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#255
  def visitor_cookie; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#263
  def visitor_header; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#271
  def visitor_param; end

  # source://ahoy_matey//lib/ahoy/tracker.rb#216
  def visitor_token_helper; end
end

# source://ahoy_matey//lib/ahoy/tracker.rb#5
Ahoy::Tracker::UUID_NAMESPACE = T.let(T.unsafe(nil), String)

# source://ahoy_matey//lib/ahoy/utils.rb#2
module Ahoy::Utils
  class << self
    # source://ahoy_matey//lib/ahoy/utils.rb#3
    def ensure_utf8(str); end
  end
end

# source://ahoy_matey//lib/ahoy/version.rb#2
Ahoy::VERSION = T.let(T.unsafe(nil), String)

# source://ahoy_matey//lib/ahoy/visit_properties.rb#6
class Ahoy::VisitProperties
  # @return [VisitProperties] a new instance of VisitProperties
  #
  # source://ahoy_matey//lib/ahoy/visit_properties.rb#9
  def initialize(request, api:); end

  # source://ahoy_matey//lib/ahoy/visit_properties.rb#16
  def generate; end

  # Returns the value of attribute landing_page.
  #
  # source://ahoy_matey//lib/ahoy/visit_properties.rb#7
  def landing_page; end

  # Returns the value of attribute params.
  #
  # source://ahoy_matey//lib/ahoy/visit_properties.rb#7
  def params; end

  # Returns the value of attribute referrer.
  #
  # source://ahoy_matey//lib/ahoy/visit_properties.rb#7
  def referrer; end

  # Returns the value of attribute request.
  #
  # source://ahoy_matey//lib/ahoy/visit_properties.rb#7
  def request; end

  private

  # masking based on Google Analytics anonymization
  # https://support.google.com/analytics/answer/2763052
  #
  # source://ahoy_matey//lib/ahoy/visit_properties.rb#99
  def ip; end

  # source://ahoy_matey//lib/ahoy/visit_properties.rb#108
  def request_properties; end

  # source://ahoy_matey//lib/ahoy/visit_properties.rb#46
  def tech_properties; end

  # source://ahoy_matey//lib/ahoy/visit_properties.rb#39
  def traffic_properties; end

  # source://ahoy_matey//lib/ahoy/visit_properties.rb#22
  def utm_properties; end
end
