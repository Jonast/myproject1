

Feature: Sign up new user

    Background: Preconditions
        * def dataGenerator = Java.type('helpers.DataGenerator')
        Given url apiUrl
        * def randomEmail = dataGenerator.getRandomEmail()
        * def randomUserName = dataGenerator.getRandomUserName()
    
    Scenario: New user Sign Up
    Given path 'users'
    * print randomEmail
    #esto sirve para imprimir en consola como se esta creando la variable
    And request
    """
    {
        "user": {
            "email": #(randomEmail),
            "password": "karate1234",
            "username": #(randomUserName)
        }
    }
    """
    When method Post
    Then status 201
    And match response ==
    """
        {
            "user": {
                "email": #(randomEmail),
                "username": #(randomUserName),
                "bio": null,
                "image": "#string",
                "token": "#string"
            }
        }
    """
  
    Scenario Outline: Validate Sing Up error mesages
    Given path 'users'
    And request
    """
    {
        "user": {
            "email": "<email>",
            "password": "<password>",
            "username": "<username>"
        }
    }
    """
    
    When method Post
    Then status 422
    And match response == <errorResponse>

    Examples:

        |email                  | password  | username              | errorResponse                                     |
        |#(randomEmail)         | Karate123 | KarateUser12344534523 | {"errors":{"username":["has already been taken"]}}|
        |javierkarate1@test.com | Karate123 | #(randomUserName)     | {"errors":{"email":["has already been taken"]}}   |
        

