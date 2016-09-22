require 'rails_helper'

RSpec.feature "Guest can create account" do
  scenario "guest attempts to make account" do
    visit new_user_path

    fill_in "Username", with: "Nicole"
    fill_in "Email", with: "nicole@gmail.com"
    fill_in "Full name", with: "Nicole M"
    fill_in "City", with: "Denver"
    fill_in "State", with: "CO"
    fill_in "Password", with: "password"

    click_button "Create Account"

    expect(page).to have_content "Nicole"

  end

  scenario "guest attempts to make account with invalid inputs" do
    visit new_user_path
    fill_in "Username", with: "Nicole Mar"
    fill_in "Full name", with: "Nicole M"
    fill_in "City", with: "Denver"
    fill_in "State", with: "CO"
    fill_in "Password", with: "password"

    click_button "Create Account"

    expect(page).to_not have_content "Nicole"

    expect(page).to have_content "Those Are Not Valid Inputs. Please Try Again"
  end
end
