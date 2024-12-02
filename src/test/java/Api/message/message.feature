Feature: postMessages API Test

  Background:
    * url 'https://backend-dev-lmw8.onrender.com/kantar/api'
    * def requestPayload =
    """
    {
      "name": "sinem",
      "email": "sinemblgn34@gmail.com",
      "thema": "asdasd",
      "tel": "+901234561122",
      "message": "ilk api otomasyon test mesaji"
    }
    """


  Scenario: Validate the postMessages API
    Given path 'messages'
    And request requestPayload
    When method POST
    Then status 200
    And match response ==
    """
    {
      "name": "sinem",
      "email": "sinemblgn34@gmail.com",
      "thema": "asdasd",
      "tel": "+901234561122",
      "message": "ilk api otomasyon test mesaji",
      "_id": "#notnull",
      "createdAt": "#notnull",
      "updatedAt": "#notnull",
      "__v": 0
    }
    """
Feature:

  Scenario: Get Token

    * url 'https://backend-dev-lmw8.onrender.com/kantar/api'
    * path '/auth/login'
    * def mybody =
    """
    {
    "email":"sinemblgn34@gmail.com",
    "password":"Sinem1234."
}
    """
    * request mybody
    * method POST


