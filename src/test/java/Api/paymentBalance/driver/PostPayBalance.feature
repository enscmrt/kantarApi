Feature: Post Pay Balance

  Background:
    * url baseUrl

  Scenario: Post PayBalance With New Card On Driver Role
    * path '/paymentbalance/threeds/with-new-cart'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * def mybody =
    """
    {
         "price":1000,

   "card":{
        "cardHolderName": "John Doe",
        "cardNumber": "5528790000000008",
        "expireMonth": "12",
        "expireYear": "2030",
        "cvc": "123"
        }
}
    """
    * request mybody
    * method POST
    * status 401

  Scenario: Post PayBalance With Registered Card On Driver Role
    * path '/paymentbalance/threeds/with-registered-cart'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * def mybody =
    """
    {
    "price":1000,
    "cardToken":"1O7CBK5iVnPazx0csTVbgtYLRdI="
}
    """
    * request mybody
    * method POST
    * status 401