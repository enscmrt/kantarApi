Feature: Get Users


  Scenario: Get Users with UserId
    * url baseUrl
    * path '/auth/user-info/66c036a4c6a6950a82d7c79d'
    * def mytoken = call read('classpath:GetTokenAdmin.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 401

