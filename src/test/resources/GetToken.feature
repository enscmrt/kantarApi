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

#Feature: Get Token for Users
#
#  Background:
#    * url baseUrl
#    * def config = read('classpath:config.properties')
#    * def email = karate.properties['email']
#    * def password = karate.properties['password']
#
#  Scenario: Login and get token
#    * path '/auth/login'
#    * request { email: email, password: password }
#    * method POST
#    * status 200
