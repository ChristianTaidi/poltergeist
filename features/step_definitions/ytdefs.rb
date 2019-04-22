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

Then("videos of large rodents are returned$") do
    puts page.inspect
    expect(page).to have_content 'Animal'
end

Then(/^Agile video "{string}"/) do |isAgile|
    
    puts page.inspect
    if (page.has_content?("Agile"))
        
            found = 'found'
    else
    
            found = 'not found'
    end
    expect(found).to eq(isAgile)
end

Given("I am watching an agile video") do
    visit ('https://youtu.be/BWAmq_WhTkM')
end

Given("I am not watching an agile video") do
    visit ('https://youtu.be/85RUTr_KtPo')
end

When("I look at the description") do
    puts page.inspect
    @description = within("//div[@id='description']"){page.find('.').text}
    
end

When("I look at the recommendations") do
    puts page.inspect
    @recommendations = within("//div[@id='items']"){page.find('yt-formatted-string').text}
    
end

Then("Description is {string}") do |isAgileDesc|
    
    if(@description.has_content?('Agilidad'))
        desc = 'agile'
    else
        desc = 'not agile'
    end
    expect(desc).to eq(isAgileDesc)
end

Then("Agile video is {string}") do |isRecommended|
    if(@recommendations.has_content?('Scrum'))
        rec = 'recommended'
    end
    expect(rec).to eq(isRecommended)
end