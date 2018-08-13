class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]
  def index
    @routes = Route.all
  end

  def show
  end

  def new
    #@user = User.find(params[:user_id])
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)
    # we need `user_id` to asssociate route with corresponding user
    #@route.user = User.find(params[:user_id])
    #@user = @route.user
    if @route.save
      redirect_to new_route_run_path(@route)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def route_params
    params.require(:route).permit(:start_point, :end_point, :total_length)
  end

  def set_route
    @route = Route.find(params[:id])
  end
end
