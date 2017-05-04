#!!!!!
#run using 'xvfb-run cucumber' if xvfb is installed, otherwise run with 'cucumber'
#!!!!!

Given(/^I am on the SEC home page$/) do
  #may need to change this depending on where the project is running
  visit 'https://csce431-project-copy-jmaldonado93.c9users.io/access/login'
  puts page.current_path
end

#Clicking on a link/button
When(/^I click "([^"]*)"$/) do |arg1|
  puts page.current_path
  click_on(arg1, match: :first)
  #sleep necessary to update the page
  sleep 5
  puts page.current_path
#  puts page.current_path
end


When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |arg1, arg2|
  fill_in arg1, with: arg2
  
  #pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should be on the SEC home page$/) do
  #commitees page for now, rather than SEC home page
  puts page.current_path
  expect(page).to have_current_path('/admin')
end

Then(/^I should be on the Admin Menu$/) do
  #commitees page for now, rather than SEC home page
  puts page.current_path
  expect(page).to have_current_path('/admin')
end

Then(/^I should be on the Committee's Page$/) do
    puts page.current_path
  expect(page).to have_current_path('/committees')
end

Then(/^I should be on the Sponsor's Page$/) do
    puts page.current_path
  expect(page).to have_current_path('/sponsors')
end

Then(/^I should be on the Event's Page$/) do
    puts page.current_path
  expect(page).to have_current_path('/events')
end

Then(/^I should be on the Member's Page$/) do
    puts page.current_path
  expect(page).to have_current_path('/members')
end

Then(/^I should see "([^"]*)"$/) do |arg1|
    puts page.current_path
  page.assert_text(arg1)
end

Then(/^I shouldn't see "([^"]*)"$/) do |arg1|
    puts page.current_path
    expect(page).not_to have_content(arg1)
end