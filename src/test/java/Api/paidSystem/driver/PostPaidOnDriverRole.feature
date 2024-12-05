Feature: Post Paid


  Scenario: Post Paid On Driver Role
    * url baseUrl
    * path '/paid/'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * def mybody =
    """
    {
     "userId":"65d5ca9cb6d648eab2775aca",
    "weighBridgeId":"65ce62126d1796c5a701064c",
    "paymentTimeTypeMap": "monthly",
    "currency": "USD",
    "price": 20
}
    """
    * request mybody
    * method POST
    * status 401