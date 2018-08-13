class RunsController < ApplicationController
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
    @run = Run.new(
      name: run_params["name"]
      )
    if @run.save
      redirect_to @run
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
    params.require(:run).permit(:name)
  end

end
