require 'rails_helper'
require 'support/test_helper.rb'

RSpec.feature "User can login" do
  scenario "registered user can login with valid credentials" do
    user = create_user
    visit login_path

    fill_in "Username", with: user.username
    fill_in "Password", with: user.password
    click_button "Login"

    expect(current_path).to eq(user_path(user))
    expect(page).to have_link "Logout"

    expect(page).not_to have_content "Login"
  end

  scenario "registered user cannot login with invalid credentials" do
    visit login_path

    fill_in "Username", with: "nicole"
    fill_in "Password", with: "password2"
    click_button "Login"

    expect(current_path).to eq(login_path)
    expect(page).to have_content "Login information incorrect."
  end

end
