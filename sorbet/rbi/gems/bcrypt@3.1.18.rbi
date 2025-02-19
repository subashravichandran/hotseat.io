# typed: strict

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `bcrypt` gem.
# Please instead update this file by running `bin/tapioca gem bcrypt`.

# A Ruby library implementing OpenBSD's bcrypt()/crypt_blowfish algorithm for
# hashing passwords.
module BCrypt; end

# A Ruby wrapper for the bcrypt() C extension calls and the Java calls.
class BCrypt::Engine
  class << self
    # Autodetects the cost from the salt string.
    def autodetect_cost(salt); end

    # Returns the cost factor which will result in computation times less than +upper_time_limit_in_ms+.
    #
    # Example:
    #
    #   BCrypt::Engine.calibrate(200)  #=> 10
    #   BCrypt::Engine.calibrate(1000) #=> 12
    #
    #   # should take less than 200ms
    #   BCrypt::Password.create("woo", :cost => 10)
    #
    #   # should take less than 1000ms
    #   BCrypt::Password.create("woo", :cost => 12)
    def calibrate(upper_time_limit_in_ms); end

    # Returns the cost factor that will be used if one is not specified when
    # creating a password hash.  Defaults to DEFAULT_COST if not set.
    def cost; end

    # Set a default cost factor that will be used if one is not specified when
    # creating a password hash.
    #
    # Example:
    #
    #   BCrypt::Engine::DEFAULT_COST            #=> 12
    #   BCrypt::Password.create('secret').cost  #=> 12
    #
    #   BCrypt::Engine.cost = 8
    #   BCrypt::Password.create('secret').cost  #=> 8
    #
    #   # cost can still be overridden as needed
    #   BCrypt::Password.create('secret', :cost => 6).cost  #=> 6
    def cost=(cost); end

    # Generates a random salt with a given computational cost.
    def generate_salt(cost = T.unsafe(nil)); end

    # Given a secret and a valid salt (see BCrypt::Engine.generate_salt) calculates
    # a bcrypt() password hash. Secrets longer than 72 bytes are truncated.
    def hash_secret(secret, salt, _ = T.unsafe(nil)); end

    # Returns true if +salt+ is a valid bcrypt() salt, false if not.
    #
    # @return [Boolean]
    def valid_salt?(salt); end

    # Returns true if +secret+ is a valid bcrypt() secret, false if not.
    #
    # @return [Boolean]
    def valid_secret?(secret); end

    private

    def __bc_crypt(_arg0, _arg1); end
    def __bc_salt(_arg0, _arg1, _arg2); end
  end
end

# The default computational expense parameter.
BCrypt::Engine::DEFAULT_COST = T.let(T.unsafe(nil), Integer)

# The maximum cost supported by the algorithm.
BCrypt::Engine::MAX_COST = T.let(T.unsafe(nil), Integer)

# Maximum possible size of bcrypt() salts.
BCrypt::Engine::MAX_SALT_LENGTH = T.let(T.unsafe(nil), Integer)

# Maximum possible size of bcrypt() secrets.
# Older versions of the bcrypt library would truncate passwords longer
# than 72 bytes, but newer ones do not. We truncate like the old library for
# forward compatibility. This way users upgrading from Ubuntu 18.04 to 20.04
# will not have their user passwords invalidated, for example.
# A max secret length greater than 255 leads to bcrypt returning nil.
# https://github.com/bcrypt-ruby/bcrypt-ruby/issues/225#issuecomment-875908425
BCrypt::Engine::MAX_SECRET_BYTESIZE = T.let(T.unsafe(nil), Integer)

# The minimum cost supported by the algorithm.
BCrypt::Engine::MIN_COST = T.let(T.unsafe(nil), Integer)

class BCrypt::Error < ::StandardError; end
module BCrypt::Errors; end

# The cost parameter provided to bcrypt() is invalid.
class BCrypt::Errors::InvalidCost < ::BCrypt::Error; end

# The hash parameter provided to bcrypt() is invalid.
class BCrypt::Errors::InvalidHash < ::BCrypt::Error; end

# The salt parameter provided to bcrypt() is invalid.
class BCrypt::Errors::InvalidSalt < ::BCrypt::Error; end

# The secret parameter provided to bcrypt() is invalid.
class BCrypt::Errors::InvalidSecret < ::BCrypt::Error; end

# A password management class which allows you to safely store users' passwords and compare them.
#
# Example usage:
#
#   include BCrypt
#
#   # hash a user's password
#   @password = Password.create("my grand secret")
#   @password #=> "$2a$12$C5.FIvVDS9W4AYZ/Ib37YuWd/7ozp1UaMhU28UKrfSxp2oDchbi3K"
#
#   # store it safely
#   @user.update_attribute(:password, @password)
#
#   # read it back
#   @user.reload!
#   @db_password = Password.new(@user.password)
#
#   # compare it after retrieval
#   @db_password == "my grand secret" #=> true
#   @db_password == "a paltry guess"  #=> false
class BCrypt::Password < ::String
  # Initializes a BCrypt::Password instance with the data from a stored hash.
  #
  # @return [Password] a new instance of Password
  def initialize(raw_hash); end

  # Compares a potential secret against the hash. Returns true if the secret is the original secret, false otherwise.
  #
  # Comparison edge case/gotcha:
  #
  #    secret = "my secret"
  #    @password = BCrypt::Password.create(secret)
  #
  #    @password == secret              # => True
  #    @password == @password           # => False
  #    @password == @password.to_s      # => False
  #    @password.to_s == @password      # => True
  #    @password.to_s == @password.to_s # => True
  def ==(secret); end

  # The hash portion of the stored password hash.
  def checksum; end

  # The cost factor used to create the hash.
  def cost; end

  # Compares a potential secret against the hash. Returns true if the secret is the original secret, false otherwise.
  #
  # Comparison edge case/gotcha:
  #
  #    secret = "my secret"
  #    @password = BCrypt::Password.create(secret)
  #
  #    @password == secret              # => True
  #    @password == @password           # => False
  #    @password == @password.to_s      # => False
  #    @password.to_s == @password      # => True
  #    @password.to_s == @password.to_s # => True
  def is_password?(secret); end

  # The salt of the store password hash (including version and cost).
  def salt; end

  # The version of the bcrypt() algorithm used to create the hash.
  def version; end

  private

  # call-seq:
  #   split_hash(raw_hash) -> version, cost, salt, hash
  #
  # Splits +h+ into version, cost, salt, and hash and returns them in that order.
  def split_hash(h); end

  # Returns true if +h+ is a valid hash.
  #
  # @return [Boolean]
  def valid_hash?(h); end

  class << self
    # Hashes a secret, returning a BCrypt::Password instance. Takes an optional <tt>:cost</tt> option, which is a
    # logarithmic variable which determines how computational expensive the hash is to calculate (a <tt>:cost</tt> of
    # 4 is twice as much work as a <tt>:cost</tt> of 3). The higher the <tt>:cost</tt> the harder it becomes for
    # attackers to try to guess passwords (even if a copy of your database is stolen), but the slower it is to check
    # users' passwords.
    #
    # Example:
    #
    #   @password = BCrypt::Password.create("my secret", :cost => 13)
    #
    # @raise [ArgumentError]
    def create(secret, options = T.unsafe(nil)); end

    # @return [Boolean]
    def valid_hash?(h); end
  end
end
