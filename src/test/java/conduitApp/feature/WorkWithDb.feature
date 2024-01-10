

Feature: Work with DB

Background: connect to db
    * def dbHandler = Java.type('helpers.DbHandler')

@debugi
Scenario: Seed database with a new job
    * eval dbHandler.addNewProduct("AA")
    
