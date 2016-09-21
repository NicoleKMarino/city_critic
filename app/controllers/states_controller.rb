class StatesController < ApplicationController
  caches_action :index
  caches_action :index, :layout => false


  def index
    @states = State.all
  end

  def show
    @state = State.find(params[:id])
    @cities = @state.cities
  end
end
