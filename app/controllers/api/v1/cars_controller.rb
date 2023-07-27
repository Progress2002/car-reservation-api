class Api::V1::CarsController < ApplicationController
  def index
    @cars = Car.all.order(created_at: :desc)
    render json: @cars
  end

  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      render json: { car: @car, message: 'success' }, status: :created
    else
      render json: { error: 'Error creating car' }, status: :unprocessable_entity
    end
  end

  def update
    @car = Car.find(params[:id])

    if @car.update(car_params)
      render json: @car
    else
      render json: { error: 'Error updating car' }, status: :unprocessable_entity
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    head :no_content
  end

  private

  def car_params
    params.require(:car).permit(:user_id, :name, :image, :description, :price, :model)
  end
end
