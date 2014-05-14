Given(/^there is a recipe categorised as "(.*?)"$/) do |name|
  @recipe = Recipe.new
  @recipe.categories << Category.new(:name => name)
  @recipe.save!
end

When(/^I select "(.*?)" from the category list$/) do |name|
  click_link name
end

Then(/^I will see a list of vegetarian recipes$/) do
  expect(page.has_content?("Vegetarian")).to be_true
  expect(all('article.recipe').length).to eq(1)
end