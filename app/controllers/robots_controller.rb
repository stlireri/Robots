class RobotsController < ApplicationController
  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.new(robot_params)
    if @robot.save
      flash[:sucess] = "you have successfully created a robot"
    else
      flash[:danger] = "Opps!! An error creating your robot"
    end
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def robot params
    params.reqiure(:Robot).permit(:name, :manufacturer, :ability, :version)
  end
end
