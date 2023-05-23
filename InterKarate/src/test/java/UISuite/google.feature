Feature: Navigate to Google Page

  Scenario: User navigates to google page
    Given driver 'https://www.google.co.in'
    And driver.maximize()
    When input("textarea[name=q]", 'Software Testing')
    And delay (5000)
    Then input('body', Key.ENTER)