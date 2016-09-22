class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def zillow_service
    @zillow_service ||= ZillowService.new
  end

  def yelp_service
    @yelp_service ||= YelpService.new
  end

end
