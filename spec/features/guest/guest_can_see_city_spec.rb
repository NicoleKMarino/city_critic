require 'rails_helper'
require 'support/test_helper.rb'

RSpec.feature "Guest can see a specific city" do
  scenario "will see neighborhood info and resturaunts" do
    create_city
    visit city_path("Denver")

    expect(page).to have_content "Top Resturaunts & Neighborhoods in Denver"
    expect(page).to have_content "Average Review"
    expect(page).to have_content "Capitol Hill"
    expect(page).to have_content "Denver Biscuit Co."
    expect(page).to_not have_content "Phoenix"
  end

end
