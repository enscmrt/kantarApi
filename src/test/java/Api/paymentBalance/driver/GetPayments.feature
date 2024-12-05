Feature: Get Payments

  Scenario: Get Payments Balance

    * url baseUrl
    * path '/paymentbalance/threeds/payments-balance'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 401