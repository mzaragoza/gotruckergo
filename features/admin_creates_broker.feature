@javascript
Feature: Admins should be able to create a broker

  Background:
    Given I am signed in as an admin

  Scenario: Admin should be able to create a broker
    When I follow "Brokers"
    And I follow "Add Broker"
    Then I fill in "broker_name" with "Dark Shipper"
    Then I fill in "broker_phone" with "823.500.0491"
    Then I fill in "broker_address" with "Emmitt Vista"
    Then I fill in "broker_address2" with "Suite 485"
    Then I fill in "broker_city" with "West Davonte"
    And select "Colorado" from "broker_state"
    Then I fill in "broker_zip" with "93409"
    Then I fill in "broker_fax" with "242.980.2045"
    Then I fill in "broker_email" with "lilian@morar.com"
    Then I fill in "broker_website" with "http://streich.com/"
    Then I fill in "broker_motor_carrier_number" with "14372596"
    And I press "Create Broker"
    Then I should see "Broker was successfully created"

