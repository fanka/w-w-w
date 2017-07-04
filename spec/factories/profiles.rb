FactoryGirl.define do
  factory :profile do
    name  { Faker::Name.first_name }
    last_name   { Faker::Name.last_name }
    city         { Faker::Address.city }
    
  end
end
