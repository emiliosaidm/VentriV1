class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.owner = current_user
    if @car.save
      redirect_to @car
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def index
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :year, :niv, :color, :transmission, :doors,
    :seats, :price, :photo)
  end
end
