require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of :full_name}
  it { should validate_presence_of :email}
  it { should validate_presence_of :username}
  it { should validate_presence_of :city}
  it { should validate_presence_of :state}
  it { should have_many :comments}
end
