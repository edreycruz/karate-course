Feature: Get API Demo

Background:
* url 'https://reqres.in/api'
* header Accept = 'application/json'

#Simple GET request
Scenario: Get Demo 1
Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200
And print response
And print responseStatus
And print responseTime
And print responseHeaders
And print responseCookies

#GET request with background
Scenario: Get Demo 2
Given path '/users?page=2'
When method GET
Then status 200
And print response

#GET request with background, path, param
Scenario: Get Demo 3
Given path '/users'
And param page = 2
When method GET
Then status 200
And print response

#GET request with background, path, param, asserts
Scenario: Get Demo 4
Given path '/users'
And param page = 2
When method GET
Then status 200
And print response
And match $.data[0].first_name != null 
And assert response.data.length == 6
And match $.data[3].id == 10
And match $.data[4].last_name == 'Edwards'