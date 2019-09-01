# The Each file gets a "Feature" line, and it should be named similiar to the file
# The next line is just documentation to describe the feature
Feature: Is it Friday yet?
  Everybody wants to know when it's Friday

  # Multiple scenarios per feature. These should be concrete examples of *behavior*
  Scenario: Sunday isn't Friday
    # These are all steps and they determine what gets executed
    Given today is "Sunday"
    When I ask whether it's Friday yet
    Then I should be told "Nope"

  # Let's have one that passes
  Scenario: Friday is Friday
    Given today is "Friday"
    When I ask whether it's Friday yet
    Then I should be told "TGIF"

  # Here we parameterize and draw from the examples
  Scenario Outline: Today is or is not Friday
    Given today is "<day>"
    When I ask whether it's Friday yet
    Then I should be told "<answer>"

  Examples:
    |day           | answer |
    |Friday        | TGIF   |
    |Sunday        | Nope   |
    |anything else!| Nope   |