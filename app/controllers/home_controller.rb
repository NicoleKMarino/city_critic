class HomeController < ApplicationController

  def show
    if current_user != nil
      @user_city = City.find_by(name: current_user.city)
    end
  end

end
