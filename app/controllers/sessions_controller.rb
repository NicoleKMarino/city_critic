class SessionsController < ApplicationController
  before_action :set_user, only: [:create]

  def new
    redirect_to dashboard_path if current_user
    session[:previous_url] = request.referrer
  end

  def create
    authorize_user
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  private

  def set_user
    if params[:commit]
      @user = User.find_by(username: params[:session][:username])
    else
      @user = User.from_omniauth(request.env["omniauth.auth"])
    end
  end


def process_local_user
  if @user && @user.authenticate(params[:session][:password])
    session[:user_id] = @user.id
    redirect_to root_path
  else
    flash.now[:danger] = "Login information incorrect."
    render :new
  end
end

def process_facebook_user
  session[:user_id] = @user.id
  redirect_to user_path(@user.id)
end

def authorize_user
  params[:commit] ? process_local_user : process_facebook_user
end

end
