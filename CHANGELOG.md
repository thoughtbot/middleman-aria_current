# Change log

All notable changes to this project will be documented in this file.

The format is loosely based on [Keep a Changelog] and this project adheres to
[Semantic Versioning].

  [Keep a Changelog]: http://keepachangelog.com/
  [Semantic Versioning]: http://semver.org/

## master

- Instead of determining the "current" resource through `String` comparison
  (including incorporating the resource file's extension), make use of the
  [`sitemap`][sitemap].

  [sitemap]: [sitemap]: https://middlemanapp.com/advanced/sitemap/#accessing-the-sitemap-from-code


## [0.1.1] - 2017-03-19

### Changed

- Relaxed `middleman-core` dependency from `~> 4.2` to `~> 4.0`. ([#13])

  [0.1.1]: https://github.com/thoughtbot/middleman-aria_current/compare/0.1.0...v0.1.1
  [#13]: https://github.com/thoughtbot/middleman-aria_current/pull/13

## 0.1.0 - 2017-03-17

### Added

- First release!
