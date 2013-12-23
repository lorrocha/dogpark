# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    first_name "Jack"
    last_name "Daniels"
    email "jdowner@something.com"
  end
end
