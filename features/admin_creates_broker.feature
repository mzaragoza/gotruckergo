@javascript
Feature: Admins should be able to create a broker

  Background:
    Given I am signed in as an admin

  Scenario: Admin should be able to create a broker
    When I follow "Brokers"
    And I follow "Add Broker"
    Then I fill in "broker_name" with "Bob's Trucks"
    Then I fill in "broker_phone" with "9545551111"
    Then I fill in "broker_address" with "22 Main St"
    Then I fill in "broker_address2" with "Suite 485"
    Then I fill in "broker_city" with "Margate"
    And select "Colorado" from "broker_state"
    Then I fill in "broker_zip" with "93409"
    Then I fill in "broker_fax" with "9545552222"
    Then I fill in "broker_email" with "lilian@morar.com"
    Then I fill in "broker_website" with "http://bobstrucks.com/"
    Then I fill in "broker_motor_carrier_number" with "143726"
    And I press "Create Broker"
    Then I should see "Broker was successfully created"
  
  Scenario: Admin should be able to update a broker
    When I follow "Brokers"
    And I follow "Add Broker"
    Then I fill in "broker_name" with "Bob's Trucks"
    Then I fill in "broker_phone" with "9545551111"
    Then I fill in "broker_address" with "22 Main St"
    Then I fill in "broker_address2" with "Suite 485"
    Then I fill in "broker_city" with "Margate"
    And select "Colorado" from "broker_state"
    Then I fill in "broker_zip" with "93409"
    Then I fill in "broker_fax" with "9545552222"
    Then I fill in "broker_email" with "lilian@morar.com"
    Then I fill in "broker_website" with "http://bobstrucks.com/"
    Then I fill in "broker_motor_carrier_number" with "143726"
    And I press "Create Broker"
    Then I should see "Broker was successfully created"
    And I follow "Edit"
    Then I fill in "broker_name" with "JJ Moving"
    Then I fill in "broker_phone" with "9545553333"
    Then I fill in "broker_address" with "245323 Pines Rd"
    Then I fill in "broker_address2" with "Suite 69"
    Then I fill in "broker_city" with "Hot Springs"
    And select "Colorado" from "broker_state"
    Then I fill in "broker_zip" with "93409"
    Then I fill in "broker_fax" with "9545554444"
    Then I fill in "broker_email" with "lilian@morar.com"
    Then I fill in "broker_website" with "http://bobstrucks.com/"
    Then I fill in "broker_motor_carrier_number" with "143726"
    And I press "Update Broker"
    Then I should see "Broker was successfully updated"

