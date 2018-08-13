class RoutesController < ApplicationController
  def index
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
      redirect_to new_run_path
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
end
