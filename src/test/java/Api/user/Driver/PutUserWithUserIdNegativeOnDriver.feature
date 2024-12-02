Feature: Get Users


  Scenario: Get Users with UserId
    * url baseUrl
    * path '/auth/updateuser/671f74c695c17e8cf1b17f00'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * def mybody =
    """
    {
     "name":"Mehmet",
    "surname":"Ozbay",
    "email":"mehmetoz.ozbay@gmail.com",
    "phoneNumber":"01111114438",
    "identity":"01234567891",
    "roles":["superadmin","admin"],
        "defaultFrontPlate": "34 BB 015",
    "defaultBackPlate":"34 BB 015",
    "loadTyp":["Cimento", "Kum", "Cakil"],
    "country":"Turkiye",
    "locale":"tr"
}
    """
    * request mybody
    * method PUT
    * status 401

