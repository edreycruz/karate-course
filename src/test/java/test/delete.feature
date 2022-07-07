Feature: Delete API Demo

  Scenario: Delete Demo 1
    #Delete request
    Given url "https://reqres.in/api/users/2"
    When method DELETE
    Then status 204 
    And print response
