class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
    @categories = Category.pluck(:name, :id)
  end

  def create
    @car = Car.new(cars_params)
    byebug
    if @car.save
      redirect_to :root
    else
      render :new
    end
  end

  private

  def cars_params
    params.require(:car).permit("make", "year", "model", "price", "description", "category_id")
  end


end
