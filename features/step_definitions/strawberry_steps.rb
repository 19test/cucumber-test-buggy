#features/step_definitions/strawberry_steps.rb
Given /^a strawberry that is "(.*)"$/ do |color|
  Strawberry.make!(:color => color)
end
