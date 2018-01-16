Feature: Which television is good to buy
As I am new to which.co.uk site
In order to check some reviews on television products
I should go to television page to check some reviews

Background:
  Given I am navigated to television reviews page

Scenario: Confirm page sorted by most recently viewed by default
  Then I verify page is sorted by "Most-recently reviewed"

Scenario: I see following list of sort by options
  Then I should see the following options within the sort by:
      | Most-recently reviewed    |
      | Highest Which? score      |
      | Price (low to high)       |
      | Price (high to low)       |
      | Screen size (high to low) |
      | Most-recently launched    |

Scenario: Confirm able to sort by high price and verify first product is highest price
  And I select "Price (high to low)" option from sort order
  Then I verify products are sorted by high to low price order

Scenario: Add product to comparision and verify product added
  And I make note of first product model number
  When I click add to compare on product
  And I see "Remove from compare" appears afer added
  And I see compare bar appears
  Then I see product added to compare bar

Scenario Outline: Filter by TV brand
  And I click on <brand> in brands
  Then I see only <brand> televisions are displaying

Examples:
    | brand   |
    | Samsung |
    | LG      |
    | Sony    |


