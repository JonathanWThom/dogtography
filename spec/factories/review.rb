FactoryGirl.define do
  factory :review do
    content "Review content"
    user
    package
  end
end
