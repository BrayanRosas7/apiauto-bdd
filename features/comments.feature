# Created by brayan.rosas at 18/10/23
@tasks @acceptance

Feature: Comments

  Scenario:  Verify GET all comments is returning all data correctly
      As a user I want to GET the comments from TODOIST API

    Given I set the base url and headers
    When I call to comments endpoint using "GET" method using the "task_id" as parameter
    Then I receive a 200 status code in response
