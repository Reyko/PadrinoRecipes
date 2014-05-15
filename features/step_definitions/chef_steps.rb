Given(/^there are some chefs$/) do
  chef = Chef.new
  chef.first_name = "James"
  chef.last_name = "Oliver"
  chef.save!
end

Given(/^we are on the homepage$/) do
  visit('/')
end

When(/^we follow "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^we should see some chefs$/) do
  expect(page.has_content? "James Oliver").to be_true
end