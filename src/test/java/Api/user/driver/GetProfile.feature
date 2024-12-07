Feature: Get the Profile


  Scenario: Get profile
    * url baseUrl
    * path '/auth/profile'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 200
    * print response
    * match response.roles contains 'driver'
    * match response.email contains 'enesgenerous@gmail.com'

