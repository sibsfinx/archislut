# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :project do
    user nil
    image ""
    author ""
    description "MyText"
  end
end
