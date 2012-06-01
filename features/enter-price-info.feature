Feature: Price Information

  As a market clerk
  I want to enter pricing summaries for the day by crop and quality

  Scenario Outline:
    Given that I am on home page
    And I can get to the price entry page

    When I select the "commodity" as "<commodity>"
    And I enter the date <dateValue>
    And I enter the quality "<quality>"
    And I enter the lowest farm gate quoted price as <flPrice>
    And I enter the highest farm gate quoted price as <fhPrice>
    And I enter the lowest delivered quoted price as <dlPrice>
    And I enter the highest delivered quoted price as <dhPrice>
    And I enter the lowest wholesale quoted price as <wlPrice>
    And I enter the highest wholesale quoted price as <whPrice>
    And I enter the lowest retail quoted price as <rlPrice>
    And I enter the highest retail quoted price as <rhPrice>
    And I push "Submit" button
    Then the response should succesfully

  Examples:
    | commodity       | dateValue  | quality | flPrice | fhPrice | dlPrice | dhPrice | wlPrice | whPrice | rlPrice | rhPrice |
    | Potatoes(Viazi) | 02/02/2012 | Grade 1 | 1       | 2       |  3      | 4       | 5       | 6       | 7       | 8       |
