Given(/^we choose to add a recipe$/) do
  click_link "Add a recipe"  
end

When(/^I complete the form without a title valid information$/) do  
  fill_in "Title", :with => "Chocolate Cake"
  fill_in "Description", :with => "Lovely Chocolate Cake"
  fill_in "Image url", :with => "http://someimage.com/adfad.jpg"
  fill_in "Instructions", :with => "Chocolate Cake"
  fill_in "Preparation time", :with => "90 minutes"
  fill_in "Cooking time", :with => "2 hours"
  fill_in "Serves", :with => 4
  click_on "Create Recipe"  
end

Then(/^a recipe should be created$/) do
  expect(Recipe.count).to eq(1)
  Recipe.count.should eq(1)

  expect(page.has_content?("Your recipe has been saved"))
end