Feature: Get API feature

  # Background:
  # * url 'https://gorest.co.in'

  Scenario: get User details
    Given url baseUrl + '/public/v2/users'
    When method GET
    Then status 200
    * print response

  Scenario: get Specific User details
    Given url baseUrl + '/public/v2/users'
    And path '1831472'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def actName = jsonResponse.name
    * def actId = jsonResponse.id
    * def actEmail = jsonResponse.email
    * print actName
    * match actName == 'Msgr. Swami Panicker'
    * match actId == 1831472
    * match actEmail == 'panicker_msgr_swami@okeefe.example'

  Scenario: get Specific User details not available
    Given url baseUrl + '/public/v2/users/1'
    When method GET
    Then status 404
    * print response
