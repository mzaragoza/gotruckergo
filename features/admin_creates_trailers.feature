@javascript
Feature: Admins should be able to create a trailer

  Background:
    Given I am signed in as an admin

  Scenario: Admin should be able to create a trailer
    When I follow "Trailers"
    And I follow "Add Trailer"
    Then I fill in "trailer_name" with "Lincoln"
    Then I fill in "trailer_length" with "19"
    Then I fill in "trailer_width" with "102"
    Then I fill in "trailer_height" with "52"
    Then I fill in "trailer_gross_vehicle_weight_rating" with "856"
    Then I fill in "trailer_suspension" with "Air Ride"
    Then I fill in "trailer_axle_capacity" with "4"
    Then I fill in "trailer_wheels" with "Steel"
    Then I fill in "trailer_tires" with "22.5"
    #Then I fill in "trailer_type" with ""
    Then I fill in "trailer_vin" with "BYRYFDAOEYCUHZWSOU"
    Then I fill in "trailer_tag" with "ORCEUTTA"

