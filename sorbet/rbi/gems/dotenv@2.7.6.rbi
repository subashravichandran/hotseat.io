# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dotenv` gem.
# Please instead update this file by running `bin/tapioca sync`.

# typed: true

module Dotenv
  private

  def ignoring_nonexistent_files; end
  def instrument(name, payload = T.unsafe(nil), &block); end
  def load(*filenames); end
  def load!(*filenames); end
  def overload(*filenames); end
  def overload!(*filenames); end
  def parse(*filenames); end
  def require_keys(*keys); end
  def with(*filenames); end

  class << self
    def ignoring_nonexistent_files; end
    def instrument(name, payload = T.unsafe(nil), &block); end
    def instrumenter; end
    def instrumenter=(_arg0); end
    def load(*filenames); end
    def load!(*filenames); end
    def overload(*filenames); end
    def overload!(*filenames); end
    def parse(*filenames); end
    def require_keys(*keys); end
    def with(*filenames); end
  end
end

class Dotenv::Environment < ::Hash
  def initialize(filename, is_load = T.unsafe(nil)); end

  def apply; end
  def apply!; end
  def filename; end
  def load(is_load = T.unsafe(nil)); end
  def read; end
end

class Dotenv::Error < ::StandardError; end
class Dotenv::FormatError < ::SyntaxError; end

class Dotenv::MissingKeys < ::Dotenv::Error
  def initialize(keys); end
end

class Dotenv::Parser
  def initialize(string, is_load = T.unsafe(nil)); end

  def call; end

  private

  def expand_newlines(value); end
  def parse_line(line); end
  def parse_value(value); end
  def unescape_characters(value); end
  def variable_not_set?(line); end

  class << self
    def call(string, is_load = T.unsafe(nil)); end
    def substitutions; end
  end
end

Dotenv::Parser::LINE = T.let(T.unsafe(nil), Regexp)
module Dotenv::Substitutions; end

module Dotenv::Substitutions::Command
  class << self
    def call(value, _env, _is_load); end
  end
end

module Dotenv::Substitutions::Variable
  class << self
    def call(value, env, is_load); end

    private

    def substitute(match, variable, env); end
  end
end
