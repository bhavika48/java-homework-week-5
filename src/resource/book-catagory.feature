Feature: Book category

  Background: I should be able to see homepage
    Given I enter URL "https://demo.nopcommerce.com/" in browser book page

  Scenario outline: I should be able to see top menu tabs on homepage with categories
    When I am on homepage
    Then I should be able to see top menu tabs with "<categories>"

  Example:
  |Categories       |
  |Computer         |
  |Electronic       |
  |Apparel          |
  |Digital downloads|
  |Books            |
  |Jwellery         |
  |Gift card        |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on home page
    Then I should be navigated to book category
    And  I should be able to see "<filters>"

    Examples:
      | filters  |
      | Sort by  |
      | Display  |
      | Grid tab |
      | List tab |

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book page
    When  I click on "<filter>"
    And   I click on "<option>"
    Then  I should be able to choose any filter option from the list
    And   I should be able to choose see "<result>"

    Examples:
      | filters | option             | result
      | Sort by | Name:A to Z        | Sorted product with the product name in alphabetical order A to Z |
      | Sort by | Name Z to A        | Sorted product with the product name in alphabetical order Z to A |
      | Sort by | price: low to high | Sorted product with the price in descending order                 |
      | Sort by | price: high to low | Sorted product with the price in ascending order                  |
      | Sort by | Created on         | Recently added product should be show first                       |
      | Display | 3                  | 3 products in a page                                              |
      | Display | 6                  | 6 products in a page                                              |
      | Display | 9                  | 9 products in a page                                              |

  Scenario Outline: I should be able to see product display format according display format type as per given in SRS document|
    Given I am on book page
    When  I click on "<Display format icon>"
    Then  I should be able see product display format according display format type as per given picDture in SRS document

    Examples:
      | Display format icon |
      | Grid                |
      | List                |

