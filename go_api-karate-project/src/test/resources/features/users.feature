@Create
Feature: Users API tests 


Background:
* url baseUrl


Scenario: Create a new employee entry with Name, Gender, Email and Status (active or inactive)

  * def email = 'karate_test_' + java.util.UUID.randomUUID() + '@example.com'
  * print 'Using email:', email

  Given path 'users'
  And request { name: 'Test User', gender: 'male', email: '#(email)', status: 'active' }
  When method post
  * print 'HTTP status =', responseStatus
  * print 'response =', response
  Then status 201
  And match response.id == '#number'



Scenario: Verify first user's status is active or inactive
  Given path 'users'
  And param page = 1
  When method get
  Then status 200
  * def firstStatus = response[0].status
  * match firstStatus == '#? (firstStatus == "active" || firstStatus == "inactive" )'
