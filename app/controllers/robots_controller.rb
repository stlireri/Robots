class RobotsController < ApplicationController
  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new(robot params)
    if @robot.save
      flash[:sucess] = "you have successfully created a robot"
      redirect_to @robot
    else
      flash[:danger] = "Opps!! An error creating your robot"
      redirect_to 
    end
  end

  def show
    @robot = Robot.find(params[:id])
  end

  def index
    @robot = Robot.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def robot params
    params.require(:robot).permit(:name, :manufacturer, :ability, :version)
  end
end
