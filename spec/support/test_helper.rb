require 'simplecov'
SimpleCov.start 'rails'

def create_user
  User.create!(
    username: "nicole",
    email: "test@gmail,com",
    password: "password",
    full_name: "Nicole Marino",
    city: "Denver",
    state: "CO"  )
end

def create_state
  state = State.create!(
    name: "Colorado",
    abbreviation: "CO",
    image_url: ".jpeg")
end

def create_three_states
  state1 = State.create!(
    name: "Arizona",
    abbreviation: "AZ",
    image_url: "test")
  state2 = State.create!(
    name: "Colorado",
    abbreviation: "CO",
    image_url:"test")
  state3 = State.create!(
    name: "Nevada",
    abbreviation: "NV",
    image_url:"test")
end

def create_city
  state = create_state
  city = state.cities.create!(
    name: "Denver")
  user = create_user
  user.comments.create(
    stars: 5,
    cons: "Test",
    city_id: city.id,
    pros: "Best City Ever")
    city.comments.create(
      stars: 2,
      cons: "Test",
      city_id: city.id,
      pros: "Best City Ever")
end
