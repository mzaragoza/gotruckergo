@javascript
Feature: Admins should be able to create a receipt

  Background:
    Given I am signed in as an admin
    And the following trucks:
      | name |
      | Kit  |
      | Blue Moon  |
      | Big Red  |
      | Stan  |
    And the following Drivers:
      | first_name | last_name |
      | Crystel    | Kuhn      |
      | Paul       | Douglas   |

  Scenario: Admin should be able to create a receipt
    When I follow "Receipts"
    And I follow "Add Receipt"
    And select "Stan" from "receipt_truck_id"
    And select "Paul Douglas" from "receipt_driver_id"
    Then I fill in "receipt_receipt_date" with "03-23-2013"
    Then I fill in "receipt_gallons" with "100"
    And select "Colorado" from "receipt_state"
    Then I fill in "receipt_cost" with "400"
    Then I fill in "receipt_odometer" with "121508"
    Then I fill in "receipt_credit_card_number" with "3587"
    And I press "Create Receipt"
    Then I should see "Receipt was successfully created"
