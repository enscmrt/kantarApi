Feature: Get the Profile Admin


  Scenario: Get profile Admin
    * url 'https://backend-dev-lmw8.onrender.com/kantar/api'
    * path '/auth/profile'
    * def mytoken = call read('classpath:GetTokenAdmin.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 200
    * print response
    * match response.roles contains 'admin'
    * match response.email contains 'husrevlale@gmail.com'

