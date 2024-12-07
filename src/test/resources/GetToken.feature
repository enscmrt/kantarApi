Feature:

  Scenario: Get Token

    * url baseUrl
    * path '/auth/login'
    * def user = karate.get('currentUser')
    * def mybody =
    """
    {
       "email": "#(user.email)",
       "password": "#(user.password)"
    }
    """
    * request mybody
    * method POST
    Then status 200

#    * url baseUrl
#    * path '/auth/login'
#    * def mybody =
#    """
#    {
#    "email":"enesgenerous@gmail.com",
#    "password":"Eg210315.,"
#}
#    """
#    * request mybody
#    * method POST
#    * status 200
