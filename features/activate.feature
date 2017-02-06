Feature: middleman-scrub is activated

  Scenario: Activate middleman-scrub
    Given a fixture app "sample-app"
    And a file named "config.rb" with:
      """
      activate :scrub
      """
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And the output should not contain "Unknown Extension: scrub"