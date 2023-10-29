@labels @acceptance

Feature: Labels

  @label_id
  Scenario:  Verify GET all labels is returning all data correctly
      As a user I want to GET the Labels in a project from TODOIST API

    Given I set the base url and headers
    When I call to labels endpoint using "GET" method using the "None" as parameter
    Then I receive a 200 status code in response

  Scenario: Verify POST section creates the labels correctly
    As a user I want to create a label from TODOIST API

  Given I set the base url and headers
  When I call to labels endpoint using "POST" method using the "labels data" as parameter
  """
  {
    "name": "feature" ,
    "color": "red"
  }
  """
  Then I receive a 200 status code in response

  @label_id
  Scenario: Verify POST labels endpoint updates a label with the content provided

    Given I set the base url and headers
    When I call to labels endpoint using "POST" method using the "update labels data" as parameter
    """
    {
      "name": "updated"
    }
    """
    Then I receive a 200 status code in response

  @label_id
  Scenario:  Verify DELETE label delete the comment correctly
      As a user I want to delete a comment from TODOIST API

    Given I set the base url and headers
    When I call to labels endpoint using "DELETE" method using the "label_id" as parameter
    Then I receive a 204 status code in response
    And I validate the response data from file


