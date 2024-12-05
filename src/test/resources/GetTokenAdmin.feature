Feature:

  Scenario: Get Token Admin

    * url baseUrl
    * path '/auth/login'
    * def mybody =
    """
    {
    "email":"husrevlale@gmail.com",
    "password":"Qwe5qweqwe."
}
    """
    * request mybody
    * method POST
    * status 200
    * print response

