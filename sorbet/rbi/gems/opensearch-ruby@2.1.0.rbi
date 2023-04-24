# typed: strict

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `opensearch-ruby` gem.
# Please instead update this file by running `bin/tapioca gem opensearch-ruby`.

# source://opensearch-ruby//lib/opensearch/version.rb#27
module OpenSearch; end

# source://opensearch-ruby//lib/opensearch.rb#35
class OpenSearch::Client
  include ::OpenSearch::API
  include ::OpenSearch::API::Shutdown
  include ::OpenSearch::API::Features
  include ::OpenSearch::API::DanglingIndices
  include ::OpenSearch::API::Remote
  include ::OpenSearch::API::Cat
  include ::OpenSearch::API::Tasks
  include ::OpenSearch::API::Snapshot
  include ::OpenSearch::API::Ingest
  include ::OpenSearch::API::Indices
  include ::OpenSearch::API::Nodes
  include ::OpenSearch::API::Cluster
  include ::OpenSearch::API::Actions
  include ::OpenSearch::API::Common

  # See OpenSearch::Transport::Client for initializer parameters
  #
  # @return [Client] a new instance of Client
  #
  # source://opensearch-ruby//lib/opensearch.rb#40
  def initialize(arguments = T.unsafe(nil), &block); end

  # source://opensearch-ruby//lib/opensearch.rb#45
  def method_missing(name, *args, &block); end

  # Returns the value of attribute transport.
  #
  # source://opensearch-ruby//lib/opensearch.rb#37
  def transport; end

  # Sets the attribute transport
  #
  # @param value the value to set the attribute transport to.
  #
  # source://opensearch-ruby//lib/opensearch.rb#37
  def transport=(_arg0); end

  private

  # source://opensearch-ruby//lib/opensearch.rb#91
  def open_search_validation_request; end

  # source://opensearch-ruby//lib/opensearch.rb#56
  def verify_open_search; end

  # @raise [OpenSearch::UnsupportedProductError]
  #
  # source://opensearch-ruby//lib/opensearch.rb#77
  def verify_version_and_distribution(version, distribution); end
end

# source://opensearch-ruby//lib/opensearch.rb#33
OpenSearch::NOT_SUPPORTED_WARNING = T.let(T.unsafe(nil), String)

# source://opensearch-ruby//lib/opensearch.rb#32
OpenSearch::SECURITY_PRIVILEGES_VALIDATION_WARNING = T.let(T.unsafe(nil), String)

# source://opensearch-ruby//lib/opensearch.rb#96
class OpenSearch::UnsupportedProductError < ::StandardError
  # @return [UnsupportedProductError] a new instance of UnsupportedProductError
  #
  # source://opensearch-ruby//lib/opensearch.rb#97
  def initialize(message = T.unsafe(nil)); end
end

# source://opensearch-ruby//lib/opensearch/version.rb#28
OpenSearch::VERSION = T.let(T.unsafe(nil), String)
