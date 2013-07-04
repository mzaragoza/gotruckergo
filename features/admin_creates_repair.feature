@javascript
Feature: Admins should be able to create a repair

  Background:
    Given I am signed in as an admin
    And the following trucks:
      | name      |
      | Kit       |
      | Blue Moon |
      | Big Red   |
      | Stan      |
    And the following trailers:
      | name        |
      | Barman      |
      | Black Widow |
      | True Black  |
      | Betty       |

  Scenario: Admin should be able to create a driver
    When I follow "Repairs"
    And I follow "Add Repair"
    Then select "Stan" from "repair_truck_id"
    And I fill in "repair_service_provider_name" with "et incidunt ut"
    And I fill in "repair_service_provider_address" with "Cartwright Mountain"
    And I fill in "repair_service_provider_address2" with "Suite 541"
    And I fill in "repair_service_provider_city" with "Quigleyside"
    And select "Colorado" from "repair_service_provider_state"
    And I fill in "repair_service_provider_zip" with "99933"
    And I fill in "repair_service_provider_fax" with "4177588838938"
    And I fill in "repair_service_provider_phone" with "karianne@bartell.com"
    And I fill in "repair_delivery_date" with "07-04-2013"
    And I fill in "repair_return_date" with "07-14-2013"
    And I fill in "repair_payment_info" with "9308"
    And I fill in "repair_invoice_date" with "08-14-2013"
    And I fill in "repair_invoice_number" with "330226091966"
    And I fill in "repair_details" with "Omnis quia praesentium cupiditate et est corrupti nesciunt. Repudiandae est itaque est fuga. Doloribus facilis minima optio magni vel."
    And I fill in "repair_labor" with "190"
    And I fill in "repair_parts" with "12848"
    And I fill in "repair_tax" with "1162"
    And I press "Create Repair"
    Then I should see "Repair was successfully created"
