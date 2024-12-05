Feature: Post Add Driver


  Scenario: Admin could not Add Driver
    * url baseUrl
    * path '/auth/add-driver/65e0ec2e33994f4429481683'
    * def mytoken = call read('classpath:GetTokenAdmin.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * def mybody =
    """
    {
     "name":"Emrecann",
    "surname":"Test",
    "email":"qnvmgdegp0@zvvzuv.com"
}
    """
    * request mybody
    * method POST
    * status 401

