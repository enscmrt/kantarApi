Feature: Get Users


  Scenario: Get Users with UserId
    * url baseUrl
    * path '/auth/searchByUserId/671f74c695c17e8cf1b17f00'
    * def mytoken = call read('classpath:GetTokenAdmin.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 401

