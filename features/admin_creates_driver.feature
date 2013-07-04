@javascript
Feature: Admins should be able to create a driver

  Background:
    Given I am signed in as an admin
    And the following trucks:
      | name      |
      | Kit       |
      | Blue Moon |
      | Big Red   |
      | Stan      |

  Scenario: Admin should be able to create a driver
    When I follow "Drivers"
    And I follow "Add Driver"
    Then I fill in "driver_first_name" with "Eric"
    And I fill in "driver_last_name" with "Cartman"
    And select "Stan" from "driver_truck_id"
    And I fill in "driver_address" with "7557 East 36th Avenue"
    And I fill in "driver_address2" with ""
    And I fill in "driver_city" with "south park"
    And select "Colorado" from "driver_state"
    And I fill in "driver_zip" with "80238"
    And I fill in "driver_cell" with "3033993100"
    And I fill in "driver_ssn" with "111223333"
    And I fill in "driver_drivers_license" with "F25592150094"
    And I fill in "driver_pay_rate" with "50000"
    And I fill in "driver_hire_date" with "2013-07-04"
    And I fill in "driver_bank_name" with "Chase"
    And I fill in "driver_bank_account_number" with "5551112223333"
    And I fill in "driver_bank_rauting_number" with "12345678901234567890"
    And I press "Create Driver"
    Then I should see "Driver was successfully created"

  Scenario: Admin should be able to edit a driver
    When I follow "Drivers"
    And I follow "Add Driver"
    Then I fill in "driver_first_name" with "Eric"
    And I fill in "driver_last_name" with "Cartman"
    And select "Stan" from "driver_truck_id"
    And I fill in "driver_address" with "7557 East 36th Avenue"
    And I fill in "driver_address2" with ""
    And I fill in "driver_city" with "south park"
    And select "Colorado" from "driver_state"
    And I fill in "driver_zip" with "80238"
    And I fill in "driver_cell" with "3033993100"
    And I fill in "driver_ssn" with "111223333"
    And I fill in "driver_drivers_license" with "F25592150094"
    And I fill in "driver_pay_rate" with "50000"
    And I fill in "driver_hire_date" with "2013-07-04"
    And I fill in "driver_bank_name" with "Chase"
    And I fill in "driver_bank_account_number" with "5551112223333"
    And I fill in "driver_bank_rauting_number" with "12345678901234567890"
    And I press "Create Driver"
    Then I should see "Driver was successfully created"
    And I follow "Edit"
    Then I fill in "driver_first_name" with "Wendy"
    And I fill in "driver_last_name" with "Testaburger"
    And select "Stan" from "driver_truck_id"
    And I fill in "driver_address" with "5544 East 13th Avenue"
    And I fill in "driver_address2" with ""
    And I fill in "driver_city" with "south park"
    And select "Colorado" from "driver_state"
    And I fill in "driver_zip" with "88666"
    And I fill in "driver_cell" with "303551234"
    And I fill in "driver_ssn" with "333322111"
    And I fill in "driver_drivers_license" with "14321432424"
    And I fill in "driver_pay_rate" with "100"
    And I fill in "driver_hire_date" with "2013-07-13"
    And I fill in "driver_bank_name" with "BOFA"
    And I fill in "driver_bank_account_number" with "5551119999999"
    And I fill in "driver_bank_rauting_number" with "09876554321123456788990"
    And I press "Update Driver"
    Then I should see "Driver was successfully updated"

