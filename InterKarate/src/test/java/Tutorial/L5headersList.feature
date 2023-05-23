Feature: Get API Requests with Header

  Scenario: get User details pass user requests in header
    Given header Content-Type = 'text/xml; charset=ISO-8859-1'
    And header Accept-Encoding = 'gzip,deflate'
    And header Connection = 'keep-alive'
    Given url baseUrl + '/public/v2/users'
    And path '1831472'
    When method GET
    Then status 200
    * print response

  Scenario: get User details pass user requests in header short form
    * def request_headers = { Content-Type: 'text/xml; charset=ISO-8859-1', Accept-Encoding: 'gzip,deflate',Connection: 'keep-alive'}
    Given headers request_headers
    When url baseUrl + '/public/v2/users'
    And path '1831472'
    When method GET
    Then status 200
    * print response

  Scenario: get User details pass user requests in header with configure
    * configure request_headers = { Content-Type: 'text/xml; charset=ISO-8859-1', Accept-Encoding: 'gzip,deflate',Connection: 'keep-alive'}
    Given url baseUrl + '/public/v2/users'
    And path '1831472'
    When method GET
    Then status 200
    * print response