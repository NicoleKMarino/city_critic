class CitiesController < ApplicationController

  def show
    @city = City.find_by(name:params[:id])
    @neighborhoods = zillow_service.get_neighborhoods(@city.name, @city.state.abbreviation)
    @resturaunts = yelp_service.get_resturaunts(@city.name)
  end

end
