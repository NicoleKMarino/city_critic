require 'rails_helper'
require 'support/test_helper.rb'

RSpec.feature "Guest can see a specific cities for that state" do
  scenario "will see the cities for that state" do
    create_city
    visit states_path
    click_on "Colorado"
    expect(page).to have_content "Denver"
    expect(page).to_not have_content "Phoenix"
  end

end
