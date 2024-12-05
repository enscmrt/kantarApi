Feature: Profile is empty


  Scenario: Profile should not empty
    * url 'https://backend-dev-lmw8.onrender.com/kantar/api'
    * path '/auth/profile'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 200
    * print response
    * assert response != {}

