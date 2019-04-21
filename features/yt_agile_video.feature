Feature: Is an agile video?
  
  Everybody wants to be agile
    
  Scenario: Search for Videos of Large Rodents
    Given I am on the YouTube page
    When I search for "capybara"
    Then videos of large rodents are returned
    
  Scenario: Agile found 
      Given I am on the YouTube page
      When I search for "Agile"
      Then Agile video "found"
      
  Scenario: Agile not found, RUP is not Agile
      Given I am on the YouTube page
      When I search for "RUP"
      Then Agile video "not found"
      
  Scenario: Agile description
      Given I am watching an agile video
      When I look at the description
      Then Description is "agile"
      
  Scenario: Not Agile description
      Given I am not watching an agile video
      When I look at the description
      Then Description is "not agile"
      
  Scenario: Agile recommendations
      Given I am watching an agile video
      When I look at the recommendations
      Then Agile video is "recommended"
      
  
      
  