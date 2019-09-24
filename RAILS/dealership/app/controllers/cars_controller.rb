class CarsController < ApplicationController

    def index
        @cars = Car.lowest_price
    end

    def show
        @car = Car.find(params[:id])
    end

    def edit
        @car = Car.find(params[:id])
    end

    def update
        @car = Car.find(params[:id])
        @car.update(car_params)
        redirect_to @car
    end

    def new
        @car = Car.new
    end

    def create
        @car = Car.new(car_params)
        @car.save
        redirect_to @car
    end

    def destroy
        @car = Car.find(params[:id])
        @car.destroy
        redirect_to root_path
    end

private

    def car_params
        params.require(:car).
        permit(:make, :model, :color, :year, :price, :image_file_name, :mileage)
    end

end
