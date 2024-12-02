Feature: Get Users


  Scenario: Get Users with UserId
    * url baseUrl
    * path '/auth/search/Luis'
    * def mytoken = call read('classpath:GetTokenAdmin.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 401
