Feature: ARIA current link

  Scenario: Without the aria_current parameter
    Given a fixture app "aria_current-app"
    Given a successfully built app at "aria_current-app" with flags "--verbose"
    Then the file "build/without-params.html" should contain:
    """
    <a href="/without-params" aria-current="page">Home</a>
    """

  Scenario: With the aria_current parameter
    Given a fixture app "aria_current-app"
    Given a successfully built app at "aria_current-app" with flags "--verbose"
    Then the file "build/with-params.html" should contain:
    """
    <a href="/with-params" aria-current="step">Home</a>
    """

  Scenario: when the link's URL is not the current page's URL
    Given a fixture app "aria_current-app"
    Given a successfully built app at "aria_current-app" with flags "--verbose"
    Then the file "build/different-url.html" should contain:
    """
    <a href="/other-page">Home</a>
    """

  Scenario: when the helper is invoked with a block
    Given a fixture app "aria_current-app"
    Given a successfully built app at "aria_current-app" with flags "--verbose"
    Then the file "build/with-block.html" should contain:
    """
    <a href="/with-block" aria-current="page">Hello</a>
    """

  Scenario: when the current page's URL contains a portion of the link's URL (i.e. /foo-bar and /foo)
    Given a fixture app "aria_current-app"
    Given a successfully built app at "aria_current-app" with flags "--verbose"
    Then the file "build/foo-bar.html" should contain:
    """
    <a href="/foo">Hello</a>
    """
