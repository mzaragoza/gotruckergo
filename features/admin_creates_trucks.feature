@javascript
Feature: Admins should be able to create a trucks

  Background:
    Given I am signed in as an admin
    And the following trailers:
      | name |
      | batman  |
      | supperman  |
      | the blue devil  |

  Scenario: Admin should be able to create a trucks
    When I follow "Trucks"
    And I follow "Add Truck"
    Then I fill in "truck_name" with "Stan"
    And select "supperman" from "truck_trailer_id"
    Then I fill in "truck_annual_inspection_date" with "2013-07-04"
    Then I fill in "truck_engine" with "Cummins ISX 400"
    Then I fill in "truck_sleeper" with "70 Premium Hig"
    Then I fill in "truck_transmission" with "9 Speed"
    Then I fill in "truck_suspension" with "Air Ride"
    Then I fill in "truck_front_axel_capacity" with "12,000 lbs"
    Then I fill in "truck_rear_axle_capacity" with "34,000 lbs"
    Then I fill in "truck_rear_end_ratio" with "3.58"
    Then I fill in "truck_wheelbase" with "236"
    Then I fill in "truck_wheels" with "Aluminum"
    Then I fill in "truck_tires" with "295/75R22.5G"
    Then I fill in "truck_odometer" with "120361"
    Then I fill in "truck_vin" with "COWPFASKIUFFUYRPAI"
    Then I fill in "truck_tag" with "NFDMEGCP"
    And I press "Create Truck"
    Then I should see "Truck was successfully created"
