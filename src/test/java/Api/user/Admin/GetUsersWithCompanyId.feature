Feature: Get Users


  Scenario: Get Users with CompanyId
    * url baseUrl
    * path '/auth/companyusers/65e0ec2e33994f4429481683'
    * def mytoken = call read('classpath:GetTokenAdmin.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 200
    * print response
    * assert response[2].name == 'Emre'

