

Feature: Pruebas básicas con Karate

        Scenario: Verificar la respuesta de una API
            Given url 'https://jsonplaceholder.typicode.com/users'
             When method get
             Then status 200