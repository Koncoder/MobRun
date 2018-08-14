class RunSessionsController < ApplicationController
  def index
  end

  def show
  end

  def new
    raise
  end

  def create
    run_session = RunSession.create()
    run_session[:user_id] = current_user.id
    run_session[:run_id] = params[:run_id]
    run_session[:start_point] = 1
    run_session.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
