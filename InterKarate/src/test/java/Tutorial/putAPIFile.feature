Feature: Create user using Post API

  Background:
    * url 'https://gorest.co.in'
    * def requestPayload =
    """
    {
    "status": "active"
    }
    """
  Scenario: Update a user with the given data
    Given path '/public/v2/users/2052648'
    And request requestPayload
    And header Authorization = 'Bearer ' +tokenID
    When method PUT
    Then status 200
    And match $.id == '#present'
