Feature: Get API with Query Parameters

  Scenario: get User details
    * def query = {status :  'active', gender: 'male'}
    Given url baseUrl + '/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response

  Scenario: get User details
    * def query = {status :  'active', gender: 'female', id: 1831467}
    Given url baseUrl + '/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response


  Scenario: get count of Users
    * def query = {status :  'active'}
    Given url baseUrl + '/public/v2/users'
    And params query
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * def userCount = jsonResponse.length
    * print userCount
    * match userCount == 10