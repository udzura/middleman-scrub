require "middleman-core"

Middleman::Extensions.register :middleman-scrub do
  require "my-extension/extension"
  MyExtension
end
