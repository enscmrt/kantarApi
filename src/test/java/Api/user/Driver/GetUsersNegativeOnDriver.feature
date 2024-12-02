Feature: Get Users


  Scenario: Get Users
    * url baseUrl
    * path '/auth'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 401
    * print response

