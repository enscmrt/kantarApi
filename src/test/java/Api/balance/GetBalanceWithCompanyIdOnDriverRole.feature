Feature: Get Balance

  Scenario: With CompanyId

    * url baseUrl
    * path '/balance/671f74c695c17e8cf1b17f01'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 200