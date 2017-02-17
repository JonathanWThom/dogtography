include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :package do
    name "Image"
    description "Description"
    price 3.50
    image { fixture_file_upload(Rails.root.join('spec', 'asset_specs', 'photos', 'dog.jpg'), 'image/jpg') }
  end
end
