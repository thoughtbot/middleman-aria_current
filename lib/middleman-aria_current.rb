require "middleman-core"

Middleman::Extensions.register :aria_current do
  require "middleman-aria_current/extension"
  AriaCurrent
end
