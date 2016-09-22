require 'rails_helper'

RSpec.describe 'YelpService', type: :service do
  it 'should be able to find a resturaunts in the area' do
    service = YelpService.new
    response = service.get_resturaunts("Denver")
    expect(response.first.name).to eq("Kitchen Table: BBQ & Comfort Food")
    expect(response.last.name).to eq("Liang's Thai Food")
    expect(response.count).to eq(10)
  end
end
