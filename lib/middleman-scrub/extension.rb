# Require core library
require 'middleman-core'
require 'middleman-scrub/version'

# Extension namespace
class ::Middleman::Scrub < ::Middleman::Extension
  option :scrub_regexp, /[^\u0009\u000A\u000D\u0020-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]/, 'A regexp to match for scrubbing target chars'
  option :verbose,      false, 'Verbose mode'

  def initialize(app, options_hash={}, &block)
    super
  end

  def after_configuration
    debug("Configured. Regexp: #{options.scrub_regexp}")
  end

  def after_build(builder)
    # TODO: Do the scrub thing
  end

  private
  def debug(msg)
    STDERR.puts(msg) if options.verbose
  end
end
