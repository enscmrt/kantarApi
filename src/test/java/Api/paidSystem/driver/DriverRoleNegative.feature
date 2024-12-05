Feature: Get Read Paid

  Background:
    * url baseUrl

  Scenario: Get Read Paid On Driver Role

    * path '/paid/671f74c695c17e8cf1b17f01'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method GET
    * status 401

    Scenario: Get Read Paid All
      * path '/paid/'
      * def mytoken = call read('classpath:GetToken.feature')
      * header token = mytoken.response.accessToken
      * header Content-Type = 'application/json'
      * method GET
      * status 401

  Scenario: Put PDF Paid
    * path '/paid/671f74c695c17e8cf1b17f01/upload-pdf'
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
    * method PUT
    * status 401

  Scenario: Delete Pdf Paid
    * path '/paid/671f74c695c17e8cf1b17f01/delete-pdf'
    * def mytoken = call read('classpath:GetToken.feature')
    * header token = mytoken.response.accessToken
    * header Content-Type = 'application/json'
    * method DELETE
    * status 401