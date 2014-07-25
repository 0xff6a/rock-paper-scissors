When(/^I click "(.*?)"$/) do |link_name|
  click_link link_name
end

When(/^I enter my name$/) do
  fill_in "name", with: "Stephen"
end

Then(/^I should be ready to play$/) do
  expect(page).to have_content("Welcome")
end

Given(/^I've registered to play$/) do
  visit '/new-game'
  click_button "Play!"
end

When(/^I choose '(.*?)'$/) do |move|
  click_button(move)
end

Then(/^I should see a result$/) do
  expect(check_options).to be true
end

def check_options
	return true if page.has_content?("DRAW!")
	return true if page.has_content?("VICTORY!")
	return true if page.has_content?("DEFEAT!")
	false
end