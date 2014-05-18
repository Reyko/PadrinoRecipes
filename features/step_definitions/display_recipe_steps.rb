
Given(/^that I have a link to the recipe$/) do
  @recipe = Recipe.new
  @recipe.title = "Cheeseburger"
  @recipe.save!
end


Given(/^I am on the Recipes page$/) do
  visit('/recipes')
  # save_and_open_page
end


When(/^I follow a particular recipe$/) do
  page.find(".recipe-img:first").find("a").click
end

Then(/^the recipe page should be loaded on screen$/) do
  expect(page.has_content?"Cheeseburger").to be_true
  save_and_open_page
end


