Feature:

  Scenario: Get Token

    * url baseUrl
    * path '/auth/login'
    * def mybody =
    """
    {
    "email":"enesgenerous@gmail.com",
    "password":"Eg210315.,"
}
    """
    * request mybody
    * method POST
    * status 200