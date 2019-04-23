Feature: Is an agile video?
  
  Everybody wants to be agile
    
  Scenario: Search for Videos of Large Rodents
    Given I am on the YouTube page
    When I search for "capybara"
    Then videos of large rodents are returned
    
  Scenario: Agile found 
      Given I am on the YouTube page
      When I search for "Agile"
      Then Agile video is "found"
      
  Scenario: Agile not found, RUP is not Agile
      Given I am on the YouTube page
      When I search for "RUP"
      Then Agile video is "not found"
      
  Scenario: Agile Watch video
      Given I searched for an agile video
      When I click on it
      Then It starts to play
      
  Scenario: Share agile video
      Given I am watching an agile video
      When I click on the share button
      Then Share options are shown
      
  Scenario: Agile recommendations
      Given I am watching an agile video
      When I click on the configuration button
      Then Configuration properties are shown
      
  
      
  