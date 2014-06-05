class CarsController < ApplicationController

  def index
    @car = Car.new
    @cars = Car.all
  end

  def create
    @car = Car.create(car_params)
    if @car.save
      redirect_to cars_path
    else
      render :index
    end
  end

  private
  def car_params
    params.require(:car).permit(:make, :model)
  end
end