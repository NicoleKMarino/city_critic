require 'rails_helper'
require 'support/test_helper.rb'

RSpec.feature "User can see a specific city and review it" do
  scenario "writes a review then see's it" do
    create_city
    visit login_path

    fill_in "Username", with: "nicole"
    fill_in "Password", with: "password"
    click_button "Login"


    visit city_path("Denver")

    click_on "Critique Denver"

    expect(page).to have_content "Write Your Review"

    fill_in "Pros", with: "Cool City"
    fill_in "Cons", with: "Bad Traffic"
    click_on "Critique"

    expect(current_path).to eq(city_path("Denver"))

    expect(page).to have_content "nicole"
    expect(page).to have_content "Cool City"
    expect(page).to have_content "Bad Traffic"
  end
end
