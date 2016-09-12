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

    def redirect_based_on_referrer
      if @user.platform_admin?
        redirect_to admin_dashboard_index_path
      elsif @user.employer?
        redirect_to employer_dashboard_index_path
      else
        redirect_to dashboard_path
      end
    end


  def authorize_user
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_based_on_referrer
    else
      flash.now[:danger] = "Login information incorrect."
      render :new
    end
  end
  
end
