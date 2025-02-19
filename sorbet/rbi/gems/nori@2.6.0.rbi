# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `nori` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

class Nori
  def initialize(options = T.unsafe(nil)); end

  def find(hash, *path); end
  def parse(xml); end

  private

  def convert_tags_to(reset = T.unsafe(nil), &block); end
  def find_value(hash, key); end
  def load_parser(parser); end
  def validate_options!(available_options, options); end

  class << self
    def hash_key(name, options = T.unsafe(nil)); end
  end
end

module Nori::CoreExt; end

module Nori::CoreExt::Hash
  def normalize_param(key, value); end
  def to_xml_attributes; end

  private

  def encode_simple_value(value); end
  def normalize_array_params(key, array); end
  def normalize_hash_params(key, hash); end
  def normalize_simple_type_params(key, value); end
end

module Nori::CoreExt::Object
  def blank?; end
end

module Nori::CoreExt::String
  def snakecase; end
end

Nori::PARSERS = T.let(T.unsafe(nil), Hash)

class Nori::StringIOFile < ::StringIO
  def content_type; end
  def content_type=(_arg0); end
  def original_filename; end
  def original_filename=(_arg0); end
end

class Nori::StringWithAttributes < ::String
  def attributes; end
  def attributes=(_arg0); end
end

Nori::VERSION = T.let(T.unsafe(nil), String)

class Nori::XMLUtilityNode
  def initialize(options, name, attributes = T.unsafe(nil)); end

  def add_node(node); end
  def advanced_typecasting(value); end
  def attributes; end
  def attributes=(_arg0); end
  def children; end
  def children=(_arg0); end
  def inner_html; end
  def name; end
  def name=(_arg0); end
  def prefixed_attribute_name(attribute); end
  def prefixed_attributes; end
  def to_hash; end
  def to_html; end
  def to_s; end
  def type; end
  def type=(_arg0); end
  def typecast_value(value); end
  def undasherize_keys(params); end

  private

  def strip_namespace(string); end
  def try_to_convert(value, &block); end

  class << self
    def available_typecasts; end
    def available_typecasts=(obj); end
    def typecasts; end
    def typecasts=(obj); end
  end
end

Nori::XMLUtilityNode::XS_DATE = T.let(T.unsafe(nil), Regexp)
Nori::XMLUtilityNode::XS_DATE_TIME = T.let(T.unsafe(nil), Regexp)
Nori::XMLUtilityNode::XS_TIME = T.let(T.unsafe(nil), Regexp)
