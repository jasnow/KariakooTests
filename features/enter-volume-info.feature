Feature: Volume Information

  As a market clerk
  I want to enter volume summeries for the day by crop and quality

  Scenario Outline:
    Given that I am on home page
    And I can get to the volume entry page

    When I select the "commodity" as "<commodity>"
    And I enter the date <dateValue>
    And I enter the quality "<quality>"
    And I select the "region" as "<region>"
    And I select the "district" as "<district>"
    And I select the "ward" as "<ward>"
    And I enter the amount received <amount>

    And I push "Submit" button
    Then the response should succesfully

  Examples:
    | commodity       | dateValue  | quality | region | district | ward   | amount |
    | Potatoes(Viazi) | 02/02/2012 | Grade 1 | Mbeya  | Nzega    | Kongwa | 10     |

