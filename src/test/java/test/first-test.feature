Feature: Sample API Test

  Scenario: Test a simple GET API
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
