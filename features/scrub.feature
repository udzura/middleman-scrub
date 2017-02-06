Feature: scrub the invalid letters

  Scenario: ignore files that does not contain invalid letters
    Given a fixture app "sample-app"
    And a file named "config.rb" with:
      """
      page '/*.html', layout: false
      activate :scrub
      """
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And the file "build/test001.html" should contain 'OK'

  Scenario: scrub letters specified in config.rb
    Given a fixture app "sample-app"
    And a file named "config.rb" with:
      """
      page '/*.html', layout: false
      activate :scrub, :scrub_regexp => /[あ-お]/
      """
    When I run `middleman build --verbose`
    Then the exit status should be 0
    And the file "build/test002.html" should contain 'かきくけこ'
    And the file "build/test002.html" should not contain 'あいうえお'

