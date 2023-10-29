# Created by brayan.rosas at 18/10/23
@comments @acceptance

Feature: Comments

  @project_id @comment_id
  Scenario:  Verify GET all comments in a project ,is returning all data correctly
      As a user I want to GET the comments in a project from TODOIST API

    Given I set the base url and headers
    When I call to comments endpoint using "GET" method using the "project_id" as parameter
    Then I receive a 200 status code in response

  @project_id
  Scenario: Verify POST section creates the comment in a project correctly
      As a user I want to create a comment in a project from TODOIST API 
    
    Given I set the base url and headers
    When I call to comments endpoint using "POST" method using the "comment data" as parameter
    """
    {
      "project_id": "project_id" ,
      "content": "Comment created from feature"
    }
    """
    Then I receive a 200 status code in response

  @project_id @comment_id
  Scenario: Verify POST comments endpoint updates a comments with the content provided

    Given I set the base url and headers
    When I call to comments endpoint using "POST" method using the "update comment data" as parameter
    """
    {
      "content": "Comment was updated from feature"
    }
    """
    Then I receive a 200 status code in response

  @project_id @comment_id
  Scenario:  Verify DELETE comment delete the comment correctly
      As a user I want to delete a comment from TODOIST API

    Given I set the base url and headers
    When I call to comments endpoint using "DELETE" method using the "comment_id" as parameter
    Then I receive a 204 status code in response
    And I validate the response data from file
    
    
