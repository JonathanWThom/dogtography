require 'rails_helper'

describe 'the reviews path' do
  it 'will add a review to a package if logged in' do
    user = create(:user)
    login_as(user)
    package = create(:package)
    visit package_path(package)
    fill_in "Content", :with => "This is a review"
    click_on "Create Review"
    expect(page).to have_content("This is a review")
  end

  it 'will fail to add a review to a package if logged in' do
    user = create(:user)
    login_as(user)
    package = create(:package)
    visit package_path(package)
    click_on "Create Review"
    expect(page).to have_content("There were some problems with your submission")
  end

  it 'will let an admin delete a review' do
    user = create(:user, :email => 'admin@admin.com', :admin => true)
    login_as(user)
    package = create(:package)
    review = create(:review, :package_id => package.id)
    visit package_path(package)
    click_link 'Delete Review'
    expect(page).to_not have_content("Delete Review")
  end

end
