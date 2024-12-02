Feature: Get Users


  Scenario: Get Users with UserId
    * url baseUrl
    * path '/auth/user-info/671f74c695c17e8cf1b17f00'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 401

