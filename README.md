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

middleman-aria_current provides a `current_link_to` helper, which wraps the
built-in `link_to` helper. It checks the URL of the current visited page and
outputs an `aria-current` attribute if it matches the URL in the link.

As an example, below is a typical website navigation where we use
`current_link_to` for each link (using ERB):

```erb
<nav>
  <%= current_link_to "Home", "/" %>
  <%= current_link_to "About", "/about" %>
</nav>
```

Now, when you visit `/about`, the link for that page will be given the
`aria-current` attribute:

```html
<nav>
  <a href="/">Home</a>
  <a href="/about" aria-current="page">About</a>
</nav>
```

---

By default, `current_link_to` will output the `page` value for `aria-current`.
You can also pass it one of `aria-current`’s other accepted values: `step`,
`location`, `date`, `time`, `true`, or `false`:

```erb
<%= current_link_to "Step 1", "/step-1", aria_current: "step" %>
<%= current_link_to "Step 2", "/step-2", aria_current: "step" %>
<%= current_link_to "Step 3", "/step-3", aria_current: "step" %>
```

Provided that you are currently visiting `/step-2`, the output will be:

```html
<a href="/step-1">Step 1</a>
<a href="/step-2" aria-current="step">Step 2</a>
<a href="/step-3">Step 3</a>
```

---

For styling current links, you can use a [CSS attribute selector][selector_mdn]:

```css
[aria-current]:not([aria-current="false"]) {
  font-weight: bold;
}
```

Note that we _exclude_ styling the link if `aria-current` has a value of
`false`. This is because `false` is a valid and useful value for denoting a link
that does not represent the current item within a set.

  [selector_mdn]: https://developer.mozilla.org/en-US/docs/Web/CSS/Attribute_selectors

## Contributing

See the [contributing document].
Thank you, [contributors]!

  [contributing document]: CONTRIBUTING.md
  [contributors]: https://github.com/thoughtbot/middleman-aria_current/graphs/contributors

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
