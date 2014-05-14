Given(/^there is recipe categorised as "(.*?)"$/) do |name|
 # name = "Vegeterian"
 @recipe = Recipe.new
 @recipe.categories << Category.new(:name => name)
 @recipe.save!
end

Given(/^I am on the homepage$/) do
  visit('/')
end

When(/^I select "(.*?)" from the category list$/) do |name|
  save_and_open_page
  click_link name
end

Then(/^I will see a list of vegetarian recipes$/) do
  pending
end