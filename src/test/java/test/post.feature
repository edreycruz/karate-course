Feature: Post API Demo

  Background: 
    * url 'https://reqres.in/api/'
    * header Accept = 'application/json'
    * def expectedOutput = read("create-user-post-response.json")
    * def requestBody = read("create-user-post-request.json")

  #Simple POST request
  Scenario: Post Demo 1
    Given url 'https://reqres.in/api/users'
    And request {"name": "morpheus","job": "leader"}
    When method POST
    Then status 201
    And print response

  #POST request with background
  Scenario: Post Demo 2
    Given path '/users'
    And request {"name": "morpheus","job": "leader"}
    When method POST
    Then status 201
    And print response

  #POST request with background
  Scenario: Post Demo 3
    Given path '/users'
    And request {"name": "morpheus","job": "leader"}
    When method POST
    Then status 201
    And print response
    And match response == {"name": "morpheus","job": "leader","id": "#string","createdAt": "#ignore"}

  #POST request reading response from json file
  Scenario: Post Demo 4
    Given path '/users'
    And request {"name": "morpheus","job": "leader"}
    When method POST
    Then status 201
    And print response
    And match $ == expectedOutput
    
  #POST request reading requeste and response from json file
  Scenario: Post Demo 5
    Given path '/users'
    And request requestBody
    When method POST
    Then status 201
    And print response
    And match $ == expectedOutput
    
  #POST request reading request and response from json file with relative path
  Scenario: Post Demo 5
    Given path '/users'
    And def requestBody1 = read("create-user-post-request.json")
    And request requestBody1
    When method POST
    Then status 201
    And print response
    And match $ == expectedOutput

  #POST request setting request values
  @readFromFile
  Scenario: Post Demo 6
    Given path '/users'
    And def reqBody = read("create-user-post-request.json")
    And set reqBody.job = "programmer"
    And request reqBody
    When method POST
    Then status 201
    And print response
    And match $ == expectedOutput