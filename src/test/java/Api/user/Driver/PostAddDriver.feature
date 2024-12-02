Feature: Post Add Driver


  Scenario: Driver could not Add Driver
    * url baseUrl
    * path '/auth/add-driver/671f74c695c17e8cf1b17f01'
    * def mytoken = call read('classpath:GetToken.feature')
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

