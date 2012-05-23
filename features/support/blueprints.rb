require 'machinist/active_record'

Strawberry.blueprint do
  color {Faker::Lorem.words(1).first.downcase}
end
