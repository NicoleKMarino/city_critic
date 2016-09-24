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
    comment_inputs = {:city_id => @city.id}
    @comment = current_user.comments.new(comment_params.merge(comment_inputs))
    if @comment.save
      redirect_to city_path(@city.name)
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
