Feature:

  Scenario: Get Token Admin

    * url baseUrl
    * path '/auth/login'
    * def mybody =
    """
    {
    "email":"husrevlal@gmail.com",
    "password":"Qwe5qweqwe."
}
    """
    * request mybody
    * method POST
    * status 404
    * print response