# Require core library
require 'middleman-core'

# Extension namespace
class ::Middleman::Scrub < ::Middleman::Extension
  option :scrub_regexp,
         /[^\u0009\u000A\u000D\u0020-\uD7FF\uE000-\uFFFD\u10000-\u10FFFF]/, 'A regexp to match for scrubbing target chars'
  option :target_filename,
         /\.(html|xml|rss|txt)\z/, 'Target filename convention to be scrubbed'
  option :verbose,      false, 'Verbose mode'

  def initialize(app, options_hash={}, &block)
    super
  end

  def after_configuration
    debug("Configured. Regexp: #{options.scrub_regexp}")
  end

  def after_build(builder)
    files = Dir.glob("#{app.config[:build_dir]}/**/*")
              .select{|f| options.target_filename.match(f) }

    files.each do |f|
      content_orig = File.read(f)
      content = content_orig.gsub(options.scrub_regexp, "")
      if content != content_orig
        File.write(f, content)
      end
      debug("Scrubbed: #{f}")
    end
  end

  private
  def debug(msg)
    STDERR.puts(msg) if options.verbose
  end
end

require 'middleman-scrub/version'
