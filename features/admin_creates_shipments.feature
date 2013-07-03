@javascript
Feature: Admins should be able to create a shipment

  Background:
    Given I am signed in as an admin
    And the following brokers:
      | name      |
      | Rita      |
      | Alexandre |
      | Rebecca   |
      | Stan      |
    And the following trucks:
      | name      |
      | Kit       |
      | Blue Moon |
      | Big Red   |
      | Stan      |
    And the following trailers:
      | name    |
      | Geovany |
      | Estella |
      | Collin  |

  Scenario: Admin should be able to create a shipment
    When I follow "Shipments"
    And I follow "Add Shipment"
    Then select "Alexandre" from "shipment_broker_id"
    And select "Big Red" from "shipment_truck_id"
    And select "Collin" from "shipment_trailer_id"
    And I fill in "shipment_load_number" with "2345354353523523"
    And I fill in "shipment_price" with "1234"
    And I fill in "shipment_miles" with "1000"
    And I fill in "shipment_pick_up_location_address" with "Langosh Tunnel"
    And I fill in "shipment_pick_up_location_address2" with "Apt. 777"
    And I fill in "shipment_pick_up_location_city" with "Margate"
    And select "Florida" from "shipment_pick_up_location_state"
    And I fill in "shipment_pick_up_location_zip" with "33066"
    And I fill in "shipment_pick_up_location_phone" with "9541234444"
    And I fill in "shipment_delivery_location_address" with "Moen Court"
    And I fill in "shipment_delivery_location_address2" with "Apt. 697"
    And I fill in "shipment_delivery_location_city" with "Ft Lauderdale"
    And select "Florida" from "shipment_delivery_location_state"
    And I fill in "shipment_delivery_location_zip" with "33308"
    And I fill in "shipment_delivery_location_phone" with "9545551234"
    And I fill in "shipment_number_of_stops" with "1"
    And I fill in "shipment_notes" with "please dont brake the cargo its really fragile"
    And I fill in "shipment_pick_up_date" with "03-23-2013"
    And I fill in "shipment_deliver_date" with "08-22-2013"
    And I fill in "shipment_status" with "New"
    And I fill in "shipment_weight" with "15945"
    And I fill in "shipment_drivers_notes" with ""
    And I fill in "shipment_packing" with "palets"
    And I fill in "shipment_seal_number" with "15146"
    And I fill in "shipment_suspension" with "air"
    And I fill in "shipment_paid_status" with "unpaid"
    And I fill in "shipment_paid_date" with ""
    And I fill in "shipment_load_conformation" with "6767420040"
    And I fill in "shipment_equipment_type" with "Van - Min L=53"
    And I fill in "shipment_size_of_trailer" with "53"
    And I fill in "shipment_pallets_pisses" with "44"
    And I fill in "shipment_pick_up_number" with "182870063"
