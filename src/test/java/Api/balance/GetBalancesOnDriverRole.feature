Feature: Get Balances

  Scenario: Get Balances On Driver Role

    * url baseUrl
    * path '/balance'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 401