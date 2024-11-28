Feature:

  Scenario: Get Token

 * url 'https://backend-dev-lmw8.onrender.com/kantar/api'
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