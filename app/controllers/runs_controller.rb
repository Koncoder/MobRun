class RunsController < ApplicationController
  before_action :set_run, only: [:show, :edit, :update, :destroy]
  before_action :set_route, only: [:show, :edit, :update]
  before_action :set_user, only: [:show, :edit, :update]

  def index
  end

  def show
  end

  def new
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
