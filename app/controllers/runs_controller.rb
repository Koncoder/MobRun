class RunsController < ApplicationController

  skip_before_action :authenticate_user!, only: :index

  before_action :set_run, only: [:show, :edit, :update, :destroy]
  before_action :set_route, only: [:show, :edit, :update]
  before_action :set_user, only: [:show, :edit, :update]


  def index
    @runs = Run.all
    @all_upcoming_runs = Run.all_upcoming_runs
  end

  def show
    @run = Run.find(params[:id])
    filter = RunSession.where(run_id: params[:id])
    @session = filter.count #WON'T THIS RETURN 1 BECAUSE OF .count???
    @done = filter.where(user_id: current_user.id).exists?
  end

  def new
    #@user = User.find(params[:user_id])
    @route = Route.find(params[:route_id])
    @run = Run.new
  end

  def create
    @run = Run.new(run_params)
    @run.route = Route.find(params[:route_id])
    @run.user = current_user
    @run.end_time = end_time(@run)
    if @run.save
      run_session = RunSession.create()
      run_session[:user_id] = current_user.id
      run_session[:run_id] = @run.id
      run_session[:start_point] = 0
      run_session.save
      redirect_to run_path(@run)
    else
      render :new
    end
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

  def run_params
    params.require(:run).permit(:start_time, :speed)
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

  def end_time(run)
    time = run.route.total_length * 3600 / run.speed
    return run.start_time + time.seconds
  end
end
