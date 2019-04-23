require 'capybara/dsl'
include Capybara::DSL
Given(/^I am on the YouTube page$/) do
  visit ('https://www.youtube.com')
end

Given(/^I am on the YouTube home page$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I search for "(.*?)"$/) do |search|
  fill_in 'search_query', :with => search
  puts page.inspect
  #find_button('search-icon-legacy').trigger('click')
  click_on 'Search'
end

Then("videos of large rodents are returned") do
    puts page.inspect
    page.has_content?('Animal')
end


Then(/^Agile video is "([^"]*)"$/) do |isAgile|
    
    puts page.inspect
    if (page.has_content?("Agile"))
        
            found = 'found'
    else
    
            found = 'not found'
    end
    found == isAgile
end

Given("I searched for an agile video") do
    visit ('https://www.youtube.com/results?search_query=agile')
end



When("I click on it") do
     click_on 'What is Agile?'
    
end


Then("It starts to play") do 
    puts page.inspect
    page.find_by_id('movie_player')
end

Given("I am watching an agile video") do
    visit('https://www.youtube.com/watch?v=nGw23NDzRrg&t=2s')
end


When("I click on the share button") do
    find('button[aria-label=Compartir]').trigger('click')
end

Then("Share options are shown") do
    puts page.inspect
    page.has_content?('Copyr')
end

When("I click on the configuration button") do
   find('button[aria-label=Configuración]').trigger('click') 
end

Then("Configuration properties are shown") do
    puts page.inspect
    find('button[aria-expanded=true]')
end