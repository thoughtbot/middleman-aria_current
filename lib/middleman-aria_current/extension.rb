require "middleman-core"

class AriaCurrent < ::Middleman::Extension
  FILE_EXTENSION = /\.(\w*)$/

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
      current_path = current_page.url.to_s.gsub(FILE_EXTENSION, "")

      if current_path.include? path
        link_options.merge!("aria-current" => aria_current)
      end

      link_to(text, path, link_options)
    end
  end
end
