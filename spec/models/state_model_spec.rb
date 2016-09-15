require 'rails_helper'

RSpec.describe State, type: :model do
  it { should validate_presence_of :abbreviation}
  it { should validate_presence_of :name}
  it { should have_many :cities}
end
