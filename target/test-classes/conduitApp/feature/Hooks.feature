

Feature: Hooks

    Background: Hooks
         * def result = callonce read('classpath:helpers/Dummy.feature') 
         #callonce mantiene el mismo nombre. call ejecuta el metodo cada vez que inicia
         * def username = result.username

        #after hooks

        #* configure afterFeature = 
        #"""
        #    function(){ 
        #        karate.log('After feature text');
        #        
        #        }
        #"""
    Scenario: First scenario
        * print username
        * print 'This is first scenario'

    Scenario: Second scenario
        * print username
        * print 'This is second scenario'
