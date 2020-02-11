require "middleman-core"

class AriaCurrent < ::Middleman::Extension
  helpers do
    def current_link_to(*arguments, aria_current: "page", **options, &block)
      if block_given?
        text = capture(&block)
        path = arguments[0]
      else
        text = arguments[0]
        path = arguments[1]
      end

      link_options = options

      uri = URI.parse(path.to_s)

      if current_resource == sitemap.find_resource_by_path(uri.path)
        link_options.merge!("aria-current" => aria_current)
      end

      link_to(text, path, link_options)
    end
  end
end
