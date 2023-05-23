Feature: Validate Authentication Token

  Scenario: Pass Authentication token in the request
    * print tokenID
    Given header Authorization = 'Bearer' +tokenID
    And url baseUrl + '/public/v1/users'
    And path '1831469'
    When method GET
    Then status 200
    * print response