# middleman-aria_current

A [Middleman] extension for indicating a current (active) link using
[`aria-current`][spec].

If you're new to `aria-current`, [Léonie Watson wrote a _wonderful_ article
detailing its usage][article].

  [Middleman]: https://middlemanapp.com/
  [spec]: https://www.w3.org/TR/wai-aria-1.1/#aria-current
  [article]: http://tink.uk/using-the-aria-current-attribute/

# Installation

1. Add middleman-aria_current to your `Gemfile`:

    ```bash
    gem "middleman-aria_current"
    ```

1. Install the gem:

    ```bash
    bundle install
    ```

1. Activate the extension in `config.rb`:

    ```ruby
    activate :aria_current
    ```

## Usage

```erb
<%= current_link_to "Home", "/" %>
```

```html
<a href="/" aria-current="page">Home</a>
```

## License

middleman-aria_current is copyright © 2017 Tyson Gach and thoughtbot, inc.
It is free software, and may be redistributed
under the terms specified in the [LICENSE] file.

  [LICENSE]: LICENSE.md

## About

![thoughtbot](http://presskit.thoughtbot.com/images/thoughtbot-logo-for-readmes.svg)

middleman-aria_current is maintained and funded by thoughtbot, inc.
The names and logos for thoughtbot are trademarks of thoughtbot, inc.

We love open source software!
See [our other projects][community]
or [hire us][hire] to help build your product.

  [community]: https://thoughtbot.com/community?utm_source=github
  [hire]: https://thoughtbot.com/hire-us?utm_source=github
