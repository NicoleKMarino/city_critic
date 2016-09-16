class HomeController < ApplicationController

  def show
    @user_city = City.find_by(name: current_user.city)
  end

end
