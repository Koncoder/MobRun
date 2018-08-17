class RunSessionsController < ApplicationController
  def index
    @run_sessions = RunSession.all
    @upcoming_runs = Run.upcoming_runs(current_user)
    @completed_runs = Run.completed_runs(current_user)
    @total = 0
    @average = 0
    @completed_runs.each do |run|
      speed = run.speed
      km = Route.find(run.route_id).total_length
      @average = (1.0*speed*km + @average*@total) / (@total + km)
      @total +=km
    end
    @average= (@average*100).to_i / 100.0
    if @total < 50
      @goal = 50
    elsif @total < 100
      @goal = 100
    elsif @total < 500
      @goal = 500
    elsif @total < 1000
      @goal = 1000
    else
      @goal = 1000000
    end
  end

  def show
    @run_session = RunSession.find(params[:id])
    @run = Run.find(@run_session.run_id)
  end

  def new
    @run = Run.find(params[:run_id])
    @route = Route.find(@run.route_id)
    @run_session = RunSession.new
  end

  def create
    @run = Run.find(params[:run_id])
    @route = Route.find(@run.route_id)
    run_session = RunSession.new(run_params)
    run_session[:start_point] = run_params[:start_point] || 0
    run_session[:user_id] = current_user.id
    run_session[:run_id] = params[:run_id]
    if run_session.save
      redirect_to run_path(Run.find(run_session[:run_id]))
    else
      render:new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def run_params
    params.require(:run_session).permit(:start_point)
  end
end
