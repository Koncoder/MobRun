class RunsController < ApplicationController
  def index
  end

  def show
  end

  def new
    #@user = User.find(params[:user_id])
    @run = Run.new
  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def route_params
    params.require(:route).permit(:start_time, :end_time)
  end
end
