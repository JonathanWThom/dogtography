require 'rails_helper'

describe 'the packages path' do
  it 'will add a new package if user is an admin' do
    user = create(:user, :admin => true)
    login_as(user)
    visit new_package_path
    fill_in "Name", :with => "Package Name"
    fill_in "Description", :with => "Package Description"
    fill_in "Price", :with => 3.50
    attach_file "package_image", "spec/asset_specs/photos/dog.jpg"
    click_on "Create Package"
    expect(page).to have_selector("img")
  end

  it 'will fail to add a new package' do
    user = create(:user, :admin => true)
    login_as(user)
    visit new_package_path
    click_on "Create Package"
    expect(page).to have_content('There were some problems with your submission.')
  end

  it 'will show an individual package page' do
    package = create(:package)
    visit package_path(package)
    expect(page).to have_content("Image")
  end
end
