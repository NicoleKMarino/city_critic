require 'rails_helper'

RSpec.feature "User can login using Twitter" do
  scenario "user clicks twitter link and is logged in with that information" do
    setup_for_oauth

    visit login_path

    expect(page).to have_link "Sign in with Facebook"

    click_link "Sign in with Facebook"

    expect(page).to have_link "Logout"

    expect(page).not_to have_content "Login"
  end
end
