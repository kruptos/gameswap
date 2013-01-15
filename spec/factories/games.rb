# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :game do
    title "MyString"
    description "MyText"
    giantbomb_id 1
    thumbnail_url "MyString"
    platform "MyString"
  end
end
