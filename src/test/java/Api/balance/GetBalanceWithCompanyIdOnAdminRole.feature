Feature: Get Balance

  Scenario: With CompanyId on Admin

    * url baseUrl
    * path '/balance/674847ed34d98cb1f137bb9a'
    * def mytoken = call read('classpath:GetTokenAdmin.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 200