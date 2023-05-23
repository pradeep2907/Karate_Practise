Feature: User Creates User

  Scenario: 01 Create User with Post Method
    Given url 'https://reqres.in/api/users'
    When method POST
    And request == {"name": "morpheus","job": "leader"}
    Then status 201

