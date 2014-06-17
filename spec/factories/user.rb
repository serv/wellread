FactoryGirl.define do
  factory :user do
    username "jasoki"
    email    "jason@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
