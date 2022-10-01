# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `rack-protection` gem.
# Please instead update this file by running `bin/tapioca gem rack-protection`.

# source://rack-protection-2.2.2/lib/rack/protection/version.rb:1
module Rack
  class << self
    # source://rack-2.2.4/lib/rack/version.rb:26
    def release; end

    # source://rack-2.2.4/lib/rack/version.rb:19
    def version; end
  end
end

# source://rack-2.2.4/lib/rack.rb:29
Rack::CACHE_CONTROL = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:31
Rack::CONTENT_LENGTH = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:32
Rack::CONTENT_TYPE = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:43
Rack::DELETE = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:36
Rack::ETAG = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:30
Rack::EXPIRES = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack/file.rb:6
Rack::File = Rack::Files

# source://rack-2.2.4/lib/rack.rb:39
Rack::GET = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:44
Rack::HEAD = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:20
Rack::HTTPS = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:35
Rack::HTTP_COOKIE = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:17
Rack::HTTP_HOST = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:18
Rack::HTTP_PORT = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:19
Rack::HTTP_VERSION = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:46
Rack::LINK = T.let(T.unsafe(nil), String)

# source://rack-test-2.0.2/lib/rack/test.rb:413
Rack::MockSession = Rack::Test::Session

# source://rack-2.2.4/lib/rack.rb:45
Rack::OPTIONS = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:42
Rack::PATCH = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:21
Rack::PATH_INFO = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:40
Rack::POST = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:41
Rack::PUT = T.let(T.unsafe(nil), String)

# source://rack-protection-2.2.2/lib/rack/protection/version.rb:2
module Rack::Protection
  class << self
    # source://rack-protection-2.2.2/lib/rack/protection.rb:24
    def new(app, options = T.unsafe(nil)); end
  end
end

# Prevented attack::   CSRF
# Supported browsers:: all
# More infos::         http://en.wikipedia.org/wiki/Cross-site_request_forgery
#
# This middleware only accepts requests other than <tt>GET</tt>,
# <tt>HEAD</tt>, <tt>OPTIONS</tt>, <tt>TRACE</tt> if their given access
# token matches the token included in the session.
#
# It checks the <tt>X-CSRF-Token</tt> header and the <tt>POST</tt> form
# data.
#
# Compatible with the {rack-csrf}[https://rubygems.org/gems/rack_csrf] gem.
#
# == Options
#
# [<tt>:authenticity_param</tt>] the name of the param that should contain
#                                the token on a request. Default value:
#                                <tt>"authenticity_token"</tt>
#
# [<tt>:key</tt>] the name of the param that should contain
#                                the token in the session. Default value:
#                                <tt>:csrf</tt>
#
# [<tt>:allow_if</tt>] a proc for custom allow/deny logic. Default value:
#                                <tt>nil</tt>
#
# == Example: Forms application
#
# To show what the AuthenticityToken does, this section includes a sample
# program which shows two forms. One with, and one without a CSRF token
# The one without CSRF token field will get a 403 Forbidden response.
#
# Install the gem, then run the program:
#
#   gem install 'rack-protection'
#   ruby server.rb
#
# Here is <tt>server.rb</tt>:
#
#   require 'rack/protection'
#
#   app = Rack::Builder.app do
#     use Rack::Session::Cookie, secret: 'secret'
#     use Rack::Protection::AuthenticityToken
#
#     run -> (env) do
#       [200, {}, [
#         <<~EOS
#           <!DOCTYPE html>
#           <html lang="en">
#           <head>
#             <meta charset="UTF-8" />
#             <title>rack-protection minimal example</title>
#           </head>
#           <body>
#             <h1>Without Authenticity Token</h1>
#             <p>This takes you to <tt>Forbidden</tt></p>
#             <form action="" method="post">
#               <input type="text" name="foo" />
#               <input type="submit" />
#             </form>
#
#             <h1>With Authenticity Token</h1>
#             <p>This successfully takes you to back to this form.</p>
#             <form action="" method="post">
#               <input type="hidden" name="authenticity_token" value="#{Rack::Protection::AuthenticityToken.token(env['rack.session'])}" />
#               <input type="text" name="foo" />
#               <input type="submit" />
#             </form>
#           </body>
#           </html>
#         EOS
#       ]]
#     end
#   end
#
#   Rack::Handler::WEBrick.run app
#
# == Example: Customize which POST parameter holds the token
#
# To customize the authenticity parameter for form data, use the
# <tt>:authenticity_param</tt> option:
#   use Rack::Protection::AuthenticityToken, authenticity_param: 'your_token_param_name'
#
# source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:92
class Rack::Protection::AuthenticityToken < ::Rack::Protection::Base
  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:107
  def accepts?(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:22
  def default_options; end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:119
  def mask_authenticity_token(session, path: T.unsafe(nil), method: T.unsafe(nil)); end

  private

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:201
  def compare_with_global_token(token, session); end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:205
  def compare_with_per_form_token(token, session, request); end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:197
  def compare_with_real_token(token, session); end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:227
  def decode_token(token); end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:223
  def encode_token(token); end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:215
  def global_token(session); end

  # Creates a masked version of the authenticity token that varies
  # on each request. The masking is used to mitigate SSL attacks
  # like BREACH.
  #
  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:172
  def mask_token(token); end

  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:193
  def masked_token?(token); end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:219
  def per_form_token(session, path, method); end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:211
  def real_token(session); end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:136
  def set_token(session); end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:231
  def token_hmac(session, identifier); end

  # Essentially the inverse of +mask_token+.
  #
  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:180
  def unmask_token(masked_token); end

  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:189
  def unmasked_token?(token); end

  # Checks the client's masked token to see if it matches the
  # session token.
  #
  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:142
  def valid_token?(env, token); end

  # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:239
  def xor_byte_strings(s1, s2); end

  class << self
    # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:103
    def random_token; end

    # source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:99
    def token(session, path: T.unsafe(nil), method: T.unsafe(nil)); end
  end
end

# source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:131
Rack::Protection::AuthenticityToken::GLOBAL_TOKEN_IDENTIFIER = T.let(T.unsafe(nil), String)

# source://rack-protection-2.2.2/lib/rack/protection/authenticity_token.rb:93
Rack::Protection::AuthenticityToken::TOKEN_LENGTH = T.let(T.unsafe(nil), Integer)

# source://rack-protection-2.2.2/lib/rack/protection/base.rb:9
class Rack::Protection::Base
  # @return [Base] a new instance of Base
  #
  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:33
  def initialize(app, options = T.unsafe(nil)); end

  # @raise [NotImplementedError]
  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:41
  def accepts?(env); end

  # Returns the value of attribute app.
  #
  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:19
  def app; end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:45
  def call(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:29
  def default_options; end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:70
  def default_reaction(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:70
  def deny(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:89
  def drop_session(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:110
  def encrypt(value); end

  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:120
  def html?(headers); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:64
  def instrument(env); end

  # Returns the value of attribute options.
  #
  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:19
  def options; end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:100
  def origin(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:104
  def random_string(secure = T.unsafe(nil)); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:53
  def react(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:93
  def referrer(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:75
  def report(env); end

  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:37
  def safe?(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:114
  def secure_compare(a, b); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:84
  def session(env); end

  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:80
  def session?(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:58
  def warn(env, message); end

  class << self
    # source://rack-protection-2.2.2/lib/rack/protection/base.rb:21
    def default_options(options); end

    # source://rack-protection-2.2.2/lib/rack/protection/base.rb:25
    def default_reaction(reaction); end
  end
end

# source://rack-protection-2.2.2/lib/rack/protection/base.rb:10
Rack::Protection::Base::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

# Prevented attack::   XSS and others
# Supported browsers:: Firefox 23+, Safari 7+, Chrome 25+, Opera 15+
#
# Description:: Content Security Policy, a mechanism web applications
#               can use to mitigate a broad class of content injection
#               vulnerabilities, such as cross-site scripting (XSS).
#               Content Security Policy is a declarative policy that lets
#               the authors (or server administrators) of a web application
#               inform the client about the sources from which the
#               application expects to load resources.
#
# More info::   W3C CSP Level 1 : https://www.w3.org/TR/CSP1/ (deprecated)
#               W3C CSP Level 2 : https://www.w3.org/TR/CSP2/ (current)
#               W3C CSP Level 3 : https://www.w3.org/TR/CSP3/ (draft)
#               https://developer.mozilla.org/en-US/docs/Web/Security/CSP
#               http://caniuse.com/#search=ContentSecurityPolicy
#               http://content-security-policy.com/
#               https://securityheaders.io
#               https://scotthelme.co.uk/csp-cheat-sheet/
#               http://www.html5rocks.com/en/tutorials/security/content-security-policy/
#
# Sets the 'Content-Security-Policy[-Report-Only]' header.
#
# Options: ContentSecurityPolicy configuration is a complex topic with
#          several levels of support that has evolved over time.
#          See the W3C documentation and the links in the more info
#          section for CSP usage examples and best practices. The
#          CSP3 directives in the 'NO_ARG_DIRECTIVES' constant need to be
#          presented in the options hash with a boolean 'true' in order
#          to be used in a policy.
#
# source://rack-protection-2.2.2/lib/rack/protection/content_security_policy.rb:38
class Rack::Protection::ContentSecurityPolicy < ::Rack::Protection::Base
  # source://rack-protection-2.2.2/lib/rack/protection/content_security_policy.rb:71
  def call(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/content_security_policy.rb:52
  def csp_policy; end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:22
  def default_options; end
end

# source://rack-protection-2.2.2/lib/rack/protection/content_security_policy.rb:41
Rack::Protection::ContentSecurityPolicy::DIRECTIVES = T.let(T.unsafe(nil), Array)

# source://rack-protection-2.2.2/lib/rack/protection/content_security_policy.rb:49
Rack::Protection::ContentSecurityPolicy::NO_ARG_DIRECTIVES = T.let(T.unsafe(nil), Array)

# Prevented attack::   Cookie Tossing
# Supported browsers:: all
# More infos::         https://github.com/blog/1466-yummy-cookies-across-domains
#
# Does not accept HTTP requests if the HTTP_COOKIE header contains more than one
# session cookie. This does not protect against a cookie overflow attack.
#
# Options:
#
# session_key:: The name of the session cookie (default: 'rack.session')
#
# source://rack-protection-2.2.2/lib/rack/protection/cookie_tossing.rb:17
class Rack::Protection::CookieTossing < ::Rack::Protection::Base
  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/cookie_tossing.rb:28
  def accepts?(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/cookie_tossing.rb:55
  def bad_cookies; end

  # source://rack-protection-2.2.2/lib/rack/protection/cookie_tossing.rb:20
  def call(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/cookie_tossing.rb:59
  def cookie_paths(path); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:70
  def default_reaction(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/cookie_tossing.rb:66
  def empty_cookie(host, path); end

  # source://rack-protection-2.2.2/lib/rack/protection/cookie_tossing.rb:49
  def redirect(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/cookie_tossing.rb:41
  def remove_bad_cookies(request, response); end

  # source://rack-protection-2.2.2/lib/rack/protection/cookie_tossing.rb:70
  def session_key; end
end

# Prevented attack::   XSS
# Supported browsers:: all
# More infos::         http://en.wikipedia.org/wiki/Cross-site_scripting
#
# Automatically escapes Rack::Request#params so they can be embedded in HTML
# or JavaScript without any further issues. Calls +html_safe+ on the escaped
# strings if defined, to avoid double-escaping in Rails.
#
# Options:
# escape:: What escaping modes to use, should be Symbol or Array of Symbols.
#          Available: :html (default), :javascript, :url
#
# source://rack-protection-2.2.2/lib/rack/protection/escaped_params.rb:24
class Rack::Protection::EscapedParams < ::Rack::Protection::Base
  extend ::Rack::Utils

  # @return [EscapedParams] a new instance of EscapedParams
  #
  # source://rack-protection-2.2.2/lib/rack/protection/escaped_params.rb:35
  def initialize(*_arg0); end

  # source://rack-protection-2.2.2/lib/rack/protection/escaped_params.rb:49
  def call(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:22
  def default_options; end

  # source://rack-protection-2.2.2/lib/rack/protection/escaped_params.rb:65
  def escape(object); end

  # source://rack-protection-2.2.2/lib/rack/protection/escaped_params.rb:75
  def escape_hash(hash); end

  # source://rack-protection-2.2.2/lib/rack/protection/escaped_params.rb:81
  def escape_string(str); end

  # source://rack-protection-2.2.2/lib/rack/protection/escaped_params.rb:59
  def handle(hash); end

  class << self
    private

    # source://rack-2.2.4/lib/rack/utils.rb:38
    def escape_url(s); end
  end
end

# Prevented attack::   CSRF
# Supported browsers:: all
# More infos::         http://en.wikipedia.org/wiki/Cross-site_request_forgery
#
# Only accepts submitted forms if a given access token matches the token
# included in the session. Does not expect such a token from Ajax request.
#
# This middleware is not used when using the Rack::Protection collection,
# since it might be a security issue, depending on your application
#
# Compatible with rack-csrf.
#
# source://rack-protection-2.2.2/lib/rack/protection/form_token.rb:17
class Rack::Protection::FormToken < ::Rack::Protection::AuthenticityToken
  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/form_token.rb:18
  def accepts?(env); end
end

# Prevented attack::   Clickjacking
# Supported browsers:: Internet Explorer 8, Firefox 3.6.9, Opera 10.50,
#                      Safari 4.0, Chrome 4.1.249.1042 and later
# More infos::         https://developer.mozilla.org/en/The_X-FRAME-OPTIONS_response_header
#
# Sets X-Frame-Options header to tell the browser avoid embedding the page
# in a frame.
#
# Options:
#
# frame_options:: Defines who should be allowed to embed the page in a
#                 frame. Use :deny to forbid any embedding, :sameorigin
#                 to allow embedding from the same origin (default).
#
# source://rack-protection-2.2.2/lib/rack/protection/frame_options.rb:19
class Rack::Protection::FrameOptions < ::Rack::Protection::Base
  # source://rack-protection-2.2.2/lib/rack/protection/frame_options.rb:30
  def call(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:22
  def default_options; end

  # source://rack-protection-2.2.2/lib/rack/protection/frame_options.rb:22
  def frame_options; end
end

# Prevented attack::   CSRF
# Supported browsers:: Google Chrome 2, Safari 4 and later
# More infos::         http://en.wikipedia.org/wiki/Cross-site_request_forgery
#                      http://tools.ietf.org/html/draft-abarth-origin
#
# Does not accept unsafe HTTP requests when value of Origin HTTP request header
# does not match default or permitted URIs.
#
# If you want to permit a specific domain, you can pass in as the `:permitted_origins` option:
#
#     use Rack::Protection, permitted_origins: ["http://localhost:3000", "http://127.0.01:3000"]
#
# The `:allow_if` option can also be set to a proc to use custom allow/deny logic.
#
# source://rack-protection-2.2.2/lib/rack/protection/http_origin.rb:19
class Rack::Protection::HttpOrigin < ::Rack::Protection::Base
  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/http_origin.rb:30
  def accepts?(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/http_origin.rb:24
  def base_url(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:22
  def default_options; end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:70
  def default_reaction(env); end
end

# source://rack-protection-2.2.2/lib/rack/protection/http_origin.rb:20
Rack::Protection::HttpOrigin::DEFAULT_PORTS = T.let(T.unsafe(nil), Hash)

# Prevented attack::   IP spoofing
# Supported browsers:: all
# More infos::         http://blog.c22.cc/2011/04/22/surveymonkey-ip-spoofing/
#
# Detect (some) IP spoofing attacks.
#
# source://rack-protection-2.2.2/lib/rack/protection/ip_spoofing.rb:11
class Rack::Protection::IPSpoofing < ::Rack::Protection::Base
  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/ip_spoofing.rb:14
  def accepts?(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:70
  def default_reaction(env); end
end

# Prevented attack::   CSRF
# Supported browsers:: all
# More infos::         http://flask.pocoo.org/docs/0.10/security/#json-security
#                      http://haacked.com/archive/2008/11/20/anatomy-of-a-subtle-json-vulnerability.aspx
#
# JSON GET APIs are vulnerable to being embedded as JavaScript when the
# Array prototype has been patched to track data. Checks the referrer
# even on GET requests if the content type is JSON.
#
# If request includes Origin HTTP header, defers to HttpOrigin to determine
# if the request is safe. Please refer to the documentation for more info.
#
# The `:allow_if` option can be set to a proc to use custom allow/deny logic.
#
# source://rack-protection-2.2.2/lib/rack/protection/json_csrf.rb:19
class Rack::Protection::JsonCsrf < ::Rack::Protection::Base
  # source://rack-protection-2.2.2/lib/rack/protection/json_csrf.rb:24
  def call(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/json_csrf.rb:52
  def close_body(body); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:22
  def default_options; end

  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/json_csrf.rb:37
  def has_vector?(request, headers); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:70
  def react(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/json_csrf.rb:44
  def react_and_close(env, body); end
end

# Prevented attack::   Directory traversal
# Supported browsers:: all
# More infos::         http://en.wikipedia.org/wiki/Directory_traversal
#
# Unescapes '/' and '.', expands +path_info+.
# Thus <tt>GET /foo/%2e%2e%2fbar</tt> becomes <tt>GET /bar</tt>.
#
# source://rack-protection-2.2.2/lib/rack/protection/path_traversal.rb:12
class Rack::Protection::PathTraversal < ::Rack::Protection::Base
  # source://rack-protection-2.2.2/lib/rack/protection/path_traversal.rb:13
  def call(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/path_traversal.rb:21
  def cleanup(path); end
end

# Prevented attack::   Secret leakage, third party tracking
# Supported browsers:: mixed support
# More infos::         https://www.w3.org/TR/referrer-policy/
#                      https://caniuse.com/#search=referrer-policy
#
# Sets Referrer-Policy header to tell the browser to limit the Referer header.
#
# Options:
# referrer_policy:: The policy to use (default: 'strict-origin-when-cross-origin')
#
# source://rack-protection-2.2.2/lib/rack/protection/referrer_policy.rb:15
class Rack::Protection::ReferrerPolicy < ::Rack::Protection::Base
  # source://rack-protection-2.2.2/lib/rack/protection/referrer_policy.rb:18
  def call(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:22
  def default_options; end
end

# Prevented attack::   CSRF
# Supported browsers:: all
# More infos::         http://en.wikipedia.org/wiki/Cross-site_request_forgery
#
# Does not accept unsafe HTTP requests if the Referer [sic] header is set to
# a different host.
#
# source://rack-protection-2.2.2/lib/rack/protection/remote_referrer.rb:12
class Rack::Protection::RemoteReferrer < ::Rack::Protection::Base
  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/remote_referrer.rb:15
  def accepts?(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:70
  def default_reaction(env); end
end

# Prevented attack::   CSRF
# Supported browsers:: all
# More infos::         http://en.wikipedia.org/wiki/Cross-site_request_forgery
#
# Only accepts unsafe HTTP requests if a given access token matches the token
# included in the session *or* the request comes from the same origin.
#
# Compatible with rack-csrf.
#
# source://rack-protection-2.2.2/lib/rack/protection/remote_token.rb:14
class Rack::Protection::RemoteToken < ::Rack::Protection::AuthenticityToken
  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/remote_token.rb:17
  def accepts?(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:70
  def default_reaction(env); end
end

# Prevented attack::   Session Hijacking
# Supported browsers:: all
# More infos::         http://en.wikipedia.org/wiki/Session_hijacking
#
# Tracks request properties like the user agent in the session and empties
# the session if those properties change. This essentially prevents attacks
# from Firesheep. Since all headers taken into consideration can be
# spoofed, too, this will not prevent determined hijacking attempts.
#
# source://rack-protection-2.2.2/lib/rack/protection/session_hijacking.rb:14
class Rack::Protection::SessionHijacking < ::Rack::Protection::Base
  # @return [Boolean]
  #
  # source://rack-protection-2.2.2/lib/rack/protection/session_hijacking.rb:19
  def accepts?(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:22
  def default_options; end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:89
  def default_reaction(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/session_hijacking.rb:30
  def encrypt(value); end
end

# Prevented attack::   Protects against against protocol downgrade attacks and cookie hijacking.
# Supported browsers:: all
# More infos::         https://en.wikipedia.org/wiki/HTTP_Strict_Transport_Security
#
# browser will prevent any communications from being sent over HTTP
# to the specified domain and will instead send all communications over HTTPS.
# It also prevents HTTPS click through prompts on browsers.
#
# Options:
#
# max_age:: How long future requests to the domain should go over HTTPS; specified in seconds
# include_subdomains:: If all present and future subdomains will be HTTPS
# preload:: Allow this domain to be included in browsers HSTS preload list. See https://hstspreload.appspot.com/
#
# source://rack-protection-2.2.2/lib/rack/protection/strict_transport.rb:20
class Rack::Protection::StrictTransport < ::Rack::Protection::Base
  # source://rack-protection-2.2.2/lib/rack/protection/strict_transport.rb:32
  def call(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:22
  def default_options; end

  # source://rack-protection-2.2.2/lib/rack/protection/strict_transport.rb:23
  def strict_transport; end
end

# source://rack-protection-2.2.2/lib/rack/protection/version.rb:3
Rack::Protection::VERSION = T.let(T.unsafe(nil), String)

# Prevented attack::   Non-permanent XSS
# Supported browsers:: Internet Explorer 8+ and Chrome
# More infos::         http://blogs.msdn.com/b/ie/archive/2008/07/01/ie8-security-part-iv-the-xss-filter.aspx
#
# Sets X-XSS-Protection header to tell the browser to block attacks.
#
# Options:
# xss_mode:: How the browser should prevent the attack (default: :block)
#
# source://rack-protection-2.2.2/lib/rack/protection/xss_header.rb:14
class Rack::Protection::XSSHeader < ::Rack::Protection::Base
  # source://rack-protection-2.2.2/lib/rack/protection/xss_header.rb:17
  def call(env); end

  # source://rack-protection-2.2.2/lib/rack/protection/base.rb:22
  def default_options; end
end

# source://rack-2.2.4/lib/rack.rb:25
Rack::QUERY_STRING = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:53
Rack::RACK_ERRORS = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:63
Rack::RACK_HIJACK = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:65
Rack::RACK_HIJACK_IO = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:55
Rack::RACK_INPUT = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:64
Rack::RACK_IS_HIJACK = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:54
Rack::RACK_LOGGER = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:76
Rack::RACK_METHODOVERRIDE_ORIGINAL_METHOD = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:67
Rack::RACK_MULTIPART_BUFFER_SIZE = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:68
Rack::RACK_MULTIPART_TEMPFILE_FACTORY = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:60
Rack::RACK_MULTIPROCESS = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:59
Rack::RACK_MULTITHREAD = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:66
Rack::RACK_RECURSIVE_INCLUDE = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:72
Rack::RACK_REQUEST_COOKIE_HASH = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:73
Rack::RACK_REQUEST_COOKIE_STRING = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:70
Rack::RACK_REQUEST_FORM_HASH = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:69
Rack::RACK_REQUEST_FORM_INPUT = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:71
Rack::RACK_REQUEST_FORM_VARS = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:74
Rack::RACK_REQUEST_QUERY_HASH = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:75
Rack::RACK_REQUEST_QUERY_STRING = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:61
Rack::RACK_RUNONCE = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:56
Rack::RACK_SESSION = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:57
Rack::RACK_SESSION_OPTIONS = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:77
Rack::RACK_SESSION_UNPACKED_COOKIE_DATA = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:58
Rack::RACK_SHOWSTATUS_DETAIL = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:52
Rack::RACK_TEMPFILES = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:62
Rack::RACK_URL_SCHEME = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:51
Rack::RACK_VERSION = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack/version.rb:23
Rack::RELEASE = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:22
Rack::REQUEST_METHOD = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:23
Rack::REQUEST_PATH = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:24
Rack::SCRIPT_NAME = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:27
Rack::SERVER_NAME = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:28
Rack::SERVER_PORT = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:26
Rack::SERVER_PROTOCOL = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:33
Rack::SET_COOKIE = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:48
Rack::TRACE = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:34
Rack::TRANSFER_ENCODING = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack.rb:47
Rack::UNLINK = T.let(T.unsafe(nil), String)

# source://rack-2.2.4/lib/rack/version.rb:16
Rack::VERSION = T.let(T.unsafe(nil), Array)
