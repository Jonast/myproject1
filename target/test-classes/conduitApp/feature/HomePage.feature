
Feature: Test for the home page

        Background: define URL
            Given url apiUrl

        @jonas
        Scenario: Get all tags
            Given path 'tags'
             When method Get
             Then status 200
             * print response
              And match response.tags contains ['enim', 'quia']
              And match response.tags !contains 'truck'
              And match response.tags contains any ['tenetur', 'consequatur', 'quia']
              And match response.tags == '#array'
              And match each response.tags == "#string"


        Scenario: Get 10 articles from the page
    * def timeValidator = read('classpath:helpers/timeValidator.js')
            Given params { limit: 10, offset: 0}
            Given path 'articles'
             When method Get
             Then status 200
              And match response == { "articles":"#[10]", "articlesCount": 213}
              And match response.articles[0].createdAt contains '2023'
              And match response.articles[*].favoritesCount contains 1
              And match response.articles[*].author.bio contains null
              And match each response..following == false
              And match each response..following == "#boolean"
              And match each response..favoritesCount == "#number"
              And match each response..bio == "##string"
              And match each response.articles ==
    """
        {
            "slug": "#string",
            "title": "#string",
            "description": "#string",
            "body": "#string",
            "tagList": "#array",
            "createdAt": "#? timeValidator(_)",
            "updatedAt": "#? timeValidator(_)",
            "favorited": '#boolean',
            "favoritesCount": "#number",
            "author": {
                "username": "#string",
                "bio": "##string",
                "image": "#string",
                "following": '#boolean'
            }
        }    
    """

        Scenario: Number to string
    * def foo = 10
    * def json = {"bar": #(foo+'')}
    * match json == {"bar": '10'}

        Scenario: String to a number
    * def foo = '10'
    * def json = {"Bar": #(foo*1)}
    * match json == {"bar": 10}


    