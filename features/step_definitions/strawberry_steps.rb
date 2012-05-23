#features/step_definitions/strawberry_steps.rb
Given /^a strawberry that is "(.*)"$/ do |color|
  Strawberry.make!(:color => color)
end

When /^I go to the homepage$/ do
  visit "/"
end

Then /^I should see "([^"]*)"$/ do |arg1|
  within('body') { page.should have_content(arg1) }
end

When /^I follow "([^"]*)"$/ do |arg1|
  click_link arg1
end
