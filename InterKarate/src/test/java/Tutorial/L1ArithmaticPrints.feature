Feature:Hello World Program

  Scenario: I want to use this template for my feature file
     * print 'Hello World!'
     * print 'Pradeep Automation Testing'

  Scenario: Declare and print variable
    * def balance = 200
    * def fee = 20
    * def tax = 10
    * print 'Total Amount ->' +(balance+fee+tax)

  Scenario: Declare multiply and print variable
    * def balance = 200
    * def fee = 20
    * def tax = 10
    * print 'Total Amount ->' +(balance*fee*tax)