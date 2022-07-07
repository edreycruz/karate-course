Feature: Config Demo

Background:
* url baseUrl

#Simple configuration demo
  Scenario: Config Demo 1
    Given print name
    
#Configuration demo
  Scenario: Config Demo 2
    Given path "/users?page=2"
    When method GET
    Then status 200
    And print name
    And match $.total == 12
