require 'rails_helper'

RSpec.describe 'YelpService', type: :service do
  it 'should be able to find a resturaunts in the area' do
    service = ZillowService.new
    response = service.get_neighborhoods("Colorado", "Denver")
    expect(response.first["name"]).to eq("Montbello")
    expect(response.count).to eq(78)
  end
end
