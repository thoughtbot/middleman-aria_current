require "middleman-core"

class AriaCurrent < ::Middleman::Extension
  FILE_EXTENSION = /\.(\w+)$/

  helpers do
    def current_link_to(*arguments, aria_current: "page", debug: false, **link_options, &block)
      if block_given?
        text = capture(&block)
        path = arguments[0]
      else
        text = arguments[0]
        path = arguments[1]
      end

      current_path = current_page.url.to_s.
        gsub(FILE_EXTENSION, "").
        chomp("/")

      link_options["aria-current"] = aria_current if current_path == path
      link_options["data-current-path"] = current_path if debug

      link_to text, path, link_options
    end
  end
end
