require 'rails_helper'
require 'support/test_helper.rb'


RSpec.feature "User can logout" do
  scenario "registered user can logout" do
    user = create_user

    visit login_path

    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Login"

    expect(page).to have_link "Logout"

    expect(page).not_to have_content "Login"

    click_link "Logout"

    expect(page).not_to have_link "Logout"
  end
end
