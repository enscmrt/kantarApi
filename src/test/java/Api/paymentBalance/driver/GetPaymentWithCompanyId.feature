Feature: Get Payment

  Scenario: With CompanyId

    * url baseUrl
    * path '/paymentbalance/threeds/671f74c695c17e8cf1b17f01/payments-balance'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 401