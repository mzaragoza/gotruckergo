@javascript
Feature: Admins should be able to login

Scenario: Admin should be able to log in
  Given I am signed in as an admin
  Then I should see 'Signed in successfully.'


