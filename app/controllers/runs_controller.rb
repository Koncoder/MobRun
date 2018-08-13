class RunsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  before_action :set_run, only: [:show, :edit, :update, :destroy]
  before_action :set_route, only: [:show, :edit, :update]
  before_action :set_user, only: [:show, :edit, :update]


  def index
    @runs = Run.all
  end

  def show
    @run = Run.find(params[:id])
  end

  def new
    @run = Run.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
    Run.destroy(params[:id])
    redirect_to runs_path
  end

  private

  def route_params
    params.require(:route).permit(:start_time, :end_time)
  end

  def set_run
    @run = Run.find(params[:id])
  end

  def set_route
    @route = Route.find(@run.route_id)
  end

  def set_user
    @user = User.find(@run.user_id)
  end
end
