# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `domain_name` gem.
# Please instead update this file by running `bin/tapioca gem domain_name`.

# Represents a domain name ready for extracting its registered domain
# and TLD.
#
# source://domain_name//lib/domain_name/version.rb#1
class DomainName
  # Parses _hostname_ into a DomainName object.  An IP address is also
  # accepted.  An IPv6 address may be enclosed in square brackets.
  #
  # @return [DomainName] a new instance of DomainName
  #
  # source://domain_name//lib/domain_name.rb#78
  def initialize(hostname); end

  # source://domain_name//lib/domain_name.rb#195
  def <(other); end

  # source://domain_name//lib/domain_name.rb#217
  def <=(other); end

  # source://domain_name//lib/domain_name.rb#179
  def <=>(other); end

  # source://domain_name//lib/domain_name.rb#174
  def ==(other); end

  # source://domain_name//lib/domain_name.rb#206
  def >(other); end

  # source://domain_name//lib/domain_name.rb#228
  def >=(other); end

  # Returns true if this domain name has a canonical registered
  # domain.
  #
  # @return [Boolean]
  #
  # source://domain_name//lib/domain_name.rb#70
  def canonical?; end

  # Returns true if this domain name has a canonical TLD.
  #
  # @return [Boolean]
  #
  # source://domain_name//lib/domain_name.rb#64
  def canonical_tld?; end

  # Checks if the server represented by this domain is qualified to
  # send and receive cookies with a domain attribute value of
  # _domain_.  A true value given as the second argument represents
  # cookies without a domain attribute value, in which case only
  # hostname equality is checked.
  #
  # @return [Boolean]
  #
  # source://domain_name//lib/domain_name.rb#150
  def cookie_domain?(domain, host_only = T.unsafe(nil)); end

  # The least "universally original" domain part of this domain name.
  # For example, "example.co.uk" for "www.sub.example.co.uk".  This
  # may be nil if the hostname does not have one, like when it is an
  # IP address, an effective TLD or higher itself, or of a
  # non-canonical domain.
  #
  # source://domain_name//lib/domain_name.rb#32
  def domain; end

  # source://domain_name//lib/domain_name.rb#256
  def domain_idn; end

  # The full host name normalized, ASCII-ized and downcased using the
  # Unicode NFC rules and the Punycode algorithm.  If initialized with
  # an IP address, the string representation of the IP address
  # suitable for opening a connection to.
  #
  # source://domain_name//lib/domain_name.rb#21
  def hostname; end

  # source://domain_name//lib/domain_name.rb#245
  def hostname_idn; end

  # source://domain_name//lib/domain_name.rb#245
  def idn; end

  # source://domain_name//lib/domain_name.rb#274
  def inspect; end

  # Returns an IPAddr object if this is an IP address.
  #
  # source://domain_name//lib/domain_name.rb#50
  def ipaddr; end

  # Returns true if this is an IP address, such as "192.168.0.1" and
  # "[::1]".
  #
  # @return [Boolean]
  #
  # source://domain_name//lib/domain_name.rb#54
  def ipaddr?; end

  # Returns the superdomain of this domain name.
  #
  # source://domain_name//lib/domain_name.rb#168
  def superdomain; end

  # The TLD part of this domain name.  For example, if the hostname is
  # "www.sub.example.co.uk", the TLD part is "uk".  This property is
  # nil only if +ipaddr?+ is true.  This may be nil if the hostname
  # does not have one, like when it is an IP address or of a
  # non-canonical domain.
  #
  # source://domain_name//lib/domain_name.rb#43
  def tld; end

  # source://domain_name//lib/domain_name.rb#265
  def tld_idn; end

  # source://domain_name//lib/domain_name.rb#239
  def to_s; end

  # source://domain_name//lib/domain_name.rb#239
  def to_str; end

  # Returns a host name representation suitable for use in the host
  # name part of a URI.  A host name, an IPv4 address, or a IPv6
  # address enclosed in square brackets.
  #
  # source://domain_name//lib/domain_name.rb#61
  def uri_host; end

  class << self
    # source://domain_name//lib/domain_name/etld_data.rb#8784
    def etld_data; end

    # Normalizes a _domain_ using the Punycode algorithm as necessary.
    # The result will be a downcased, ASCII-only string.
    #
    # source://domain_name//lib/domain_name.rb#288
    def normalize(domain); end
  end
end

# source://domain_name//lib/domain_name.rb#74
DomainName::DOT = T.let(T.unsafe(nil), String)

# source://domain_name//lib/domain_name/etld_data.rb#4
DomainName::ETLD_DATA = T.let(T.unsafe(nil), Hash)

# source://domain_name//lib/domain_name/etld_data.rb#2
DomainName::ETLD_DATA_DATE = T.let(T.unsafe(nil), String)

# source://domain_name//lib/domain_name/punycode.rb#52
module DomainName::Punycode
  class << self
    # Decode a +string+ encoded in Punycode
    #
    # source://domain_name//lib/domain_name/punycode.rb#194
    def decode(string); end

    # Decode a hostname using IDN/Punycode algorithms
    #
    # source://domain_name//lib/domain_name/punycode.rb#276
    def decode_hostname(hostname); end

    # Encode a +string+ in Punycode
    #
    # source://domain_name//lib/domain_name/punycode.rb#101
    def encode(string); end

    # Encode a hostname using IDN/Punycode algorithms
    #
    # source://domain_name//lib/domain_name/punycode.rb#181
    def encode_hostname(hostname); end
  end
end

# Most errors we raise are basically kind of ArgumentError.
#
# source://domain_name//lib/domain_name/punycode.rb#96
class DomainName::Punycode::ArgumentError < ::ArgumentError; end

# source://domain_name//lib/domain_name/punycode.rb#53
DomainName::Punycode::BASE = T.let(T.unsafe(nil), Integer)

# source://domain_name//lib/domain_name/punycode.rb#97
class DomainName::Punycode::BufferOverflowError < ::DomainName::Punycode::ArgumentError; end

# source://domain_name//lib/domain_name/punycode.rb#65
DomainName::Punycode::CUTOFF = T.let(T.unsafe(nil), Integer)

# source://domain_name//lib/domain_name/punycode.rb#57
DomainName::Punycode::DAMP = T.let(T.unsafe(nil), Integer)

# Returns the numeric value of a basic code point (for use in
# representing integers) in the range 0 to base-1, or nil if cp
# is does not represent a value.
#
# source://domain_name//lib/domain_name/punycode.rb#72
DomainName::Punycode::DECODE_DIGIT = T.let(T.unsafe(nil), Hash)

# source://domain_name//lib/domain_name/punycode.rb#60
DomainName::Punycode::DELIMITER = T.let(T.unsafe(nil), String)

# source://domain_name//lib/domain_name/punycode.rb#92
DomainName::Punycode::DOT = T.let(T.unsafe(nil), String)

# Returns the basic code point whose value (when used for
# representing integers) is d, which must be in the range 0 to
# BASE-1.  The lowercase form is used unless flag is true, in
# which case the uppercase form is used.  The behavior is
# undefined if flag is nonzero and digit d has no uppercase
# form.
#
# source://domain_name//lib/domain_name/punycode.rb#86
DomainName::Punycode::ENCODE_DIGIT = T.let(T.unsafe(nil), Proc)

# source://domain_name//lib/domain_name/punycode.rb#58
DomainName::Punycode::INITIAL_BIAS = T.let(T.unsafe(nil), Integer)

# source://domain_name//lib/domain_name/punycode.rb#59
DomainName::Punycode::INITIAL_N = T.let(T.unsafe(nil), Integer)

# source://domain_name//lib/domain_name/punycode.rb#64
DomainName::Punycode::LOBASE = T.let(T.unsafe(nil), Integer)

# source://domain_name//lib/domain_name/punycode.rb#62
DomainName::Punycode::MAXINT = T.let(T.unsafe(nil), Integer)

# source://domain_name//lib/domain_name/punycode.rb#93
DomainName::Punycode::PREFIX = T.let(T.unsafe(nil), String)

# source://domain_name//lib/domain_name/punycode.rb#67
DomainName::Punycode::RE_NONBASIC = T.let(T.unsafe(nil), Regexp)

# source://domain_name//lib/domain_name/punycode.rb#56
DomainName::Punycode::SKEW = T.let(T.unsafe(nil), Integer)

# source://domain_name//lib/domain_name/punycode.rb#55
DomainName::Punycode::TMAX = T.let(T.unsafe(nil), Integer)

# source://domain_name//lib/domain_name/punycode.rb#54
DomainName::Punycode::TMIN = T.let(T.unsafe(nil), Integer)

# source://domain_name//lib/domain_name/version.rb#2
DomainName::VERSION = T.let(T.unsafe(nil), String)

class Object < ::BasicObject
  include ::Kernel
  include ::PP::ObjectMixin
  include ::MakeMakefile

  private

  # source://domain_name//lib/domain_name.rb#295
  def DomainName(hostname); end
end
