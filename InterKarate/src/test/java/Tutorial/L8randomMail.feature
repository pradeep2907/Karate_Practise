Feature: Create user using Post API

  Background:
    * url 'https://gorest.co.in'

    * def random_string =
    """
      function(s){
         var text = "";
         var pattern = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890'
         for (var i=0;i<s;i++)
         text += pattern.charAt(Math.floor(Math.random() * pattern.length()));
        return text;
      }
     """
    * def randomString = random_string(10)
    * print randomString

    * def requestPayload =
      """
      {
      "name": "tom",
      "gender": "male",
      "status": "active"
      }
      """
    * requestPayload.email = randomString + "@gmail.com"
    * print requestPayload

Scenario: Create a user with the given data
    Given path '/public/v1/users'
    And request requestPayload
    And header Authorization = 'Bearer ' +tokenID
    When method Post
    Then status 201
    And match $.data.id == '#present'
    And match $.data.name == 'tom'
    And match $.data.email == requestPayload.email
    And match $.data.gender == 'male'
    And match $.data.status == 'active'
