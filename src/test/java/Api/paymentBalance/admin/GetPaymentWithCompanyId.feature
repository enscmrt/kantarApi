Feature: Get Payment

  Scenario: With CompanyId

    * url baseUrl
    * path '/paymentbalance/threeds/674847ed34d98cb1f137bb9a/payments-balance'
    * def mytoken = call read('classpath:GetTokenAdmin.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 200