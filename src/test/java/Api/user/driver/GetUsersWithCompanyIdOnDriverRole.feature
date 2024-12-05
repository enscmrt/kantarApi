Feature: Get Users


  Scenario: Get Users with CompanyId
    * url baseUrl
    * path '/auth/companyusers/671f74c695c17e8cf1b17f01'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 401


