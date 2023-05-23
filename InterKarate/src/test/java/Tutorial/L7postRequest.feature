Feature: Create user using Post API

  Background:
    * def requestPayload =
    """
    {
    "name": "tom",
    "email": "dash5@gmail.com",
    "gender": "male",
    "status": "active"
    }
    """
  Scenario: Create a user with the given data
    Given url 'https://gorest.co.in/public/v2/users'
    And request requestPayload
    And header Authorization = 'Bearer ' +tokenID
    When method Post
    Then status 201
    And match $.id == '#present'
    And match $.name == 'tom'
    And match $.email == 'dash5@gmail.com'
    And match $.gender == 'male'
    And match $.status == 'active'
