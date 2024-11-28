Feature: Get the Profile


  Scenario: Get profile
    * url 'https://backend-dev-lmw8.onrender.com/kantar/api'
    * path '/auth/profile'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * method GET
    * status 200
