# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `high_voltage` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: strict

module HighVoltage
  extend ::HighVoltage::Configuration
end

module HighVoltage::Configuration
  def configure; end
  def content_path; end
  def content_path=(_arg0); end
  def full_path; end
  def home_page; end
  def home_page=(_arg0); end
  def layout; end
  def layout=(_arg0); end
  def page_ids; end
  def parent_engine; end
  def parent_engine=(_arg0); end
  def route_drawer; end
  def route_drawer=(_arg0); end
  def routes; end
  def routes=(_arg0); end
  def set_default_configuration; end

  class << self
    def extended(base); end
  end
end

module HighVoltage::Constraints; end

class HighVoltage::Constraints::RootRoute
  def initialize; end

  def matches?(request); end

  private

  def clean_page_path(request_path); end
  def content_path; end
  def lookup_context; end
end

class HighVoltage::Engine < ::Rails::Engine; end
class HighVoltage::InvalidPageIdError < ::StandardError; end

class HighVoltage::Page
  def initialize(content_path, file_path); end

  def content_path; end
  def file_path; end
  def id; end
  def valid?; end

  private

  def available_handlers; end
  def directory?; end
  def exists?; end
  def file_in_content_path?; end
  def handled?; end
  def handler_extension; end
  def partial?; end
end

class HighVoltage::PageCollector
  def initialize(content_path); end

  def content_path; end
  def page_ids; end

  private

  def pages; end
end

class HighVoltage::PageFinder
  def initialize(page_id); end

  def content_path; end
  def find; end

  protected

  def clean_content_pathname; end
  def page_id; end
end

module HighVoltage::RouteDrawers; end

class HighVoltage::RouteDrawers::Default
  class << self
    def match_attributes; end
  end
end

class HighVoltage::RouteDrawers::Root
  class << self
    def match_attributes; end
  end
end

module HighVoltage::StaticPage
  extend ::ActiveSupport::Concern

  def invalid_page; end
  def show; end

  private

  def current_page; end
  def page_finder; end
  def page_finder_factory; end
end

HighVoltage::VERSION = T.let(T.unsafe(nil), String)
