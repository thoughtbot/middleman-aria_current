require "middleman-core"

class AriaCurrent < ::Middleman::Extension
  helpers do
    def current_link_to(*arguments, aria_current: "page", **options, &block)
      if block_given?
        path = arguments[0]
      else
        path = arguments[1]
      end

      link_options = options.dup

      uri = URI.parse(path.to_s)

      if current_resource == sitemap.find_resource_by_path(uri.path)
        link_options.merge!("aria-current" => aria_current)
      end

      link_to(*arguments, link_options, &block)
    end
  end
end
