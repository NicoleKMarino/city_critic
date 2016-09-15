require 'rails_helper'

RSpec.feature "Visitor sees appropriate information" do
  scenario "views root path" do

    visit root_path

    expect(page).to have_content("Helping millions of users find their next destination.")
    expect(page).to_not have_button("Review My City")
    expect(page).to_not have_button("See All Cities")
  end
end
