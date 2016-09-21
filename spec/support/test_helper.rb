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
    name: "Arizona",
    abbreviation: "AZ")
end

def create_three_states
  state1 = State.create!(
    name: "Arizona",
    abbreviation: "AZ")
  state2 = State.create!(
    name: "Colorado",
    abbreviation: "CO")
  state3 = State.create!(
    name: "Nevada",
    abbreviation: "NV")
end

def create_city
  state = create_state
  state.cities.create!(
    name: "Phoenix")
end
