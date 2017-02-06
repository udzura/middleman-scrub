require "middleman-core"

::Middleman::Extensions.register :scrub do
  require "middleman-scrub/extension"
  ::Middleman::Scrub
end
