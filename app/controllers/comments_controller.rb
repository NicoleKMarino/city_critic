class CommentsController < ApplicationController
  before_action :set_city

  def set_city
    @city = City.find_by(name: params[:name])
  end

  def new
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    comment_hash = comment_params
    comment_hash[:user_id] = current_user.id
    comment_hash[:city_id] = @city.id
    comment_hash[:stars] = comment_params[:stars].to_i
    @comment = Comment.create(comment_hash)
    if @comment.save
      redirect_to city_path(@city)
    else
      flash[:error] = 'Please fill in all fields.'
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(
    :pros,
    :cons,
    :stars,
    :name)
  end
end
