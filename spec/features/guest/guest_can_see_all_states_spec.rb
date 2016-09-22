require 'rails_helper'
require 'support/test_helper.rb'

RSpec.feature "All states can be viewed" do
  scenario "a guest views the states path" do
    create_three_states

    visit root_path

    click_on "All Cities"

    expect(current_path).to eq(states_path)

    expect(page).to have_content("Arizona")
    expect(page).to have_content("Colorado")
    expect(page).to have_content("Nevada")
  end
end
