class CarsController < ApplicationController

    def index
        @cars = Car.all
    end

    def show
        @car = Car.find(params[:id])
    end

    def edit
        @car = Car.find(params[:id])
    end

    def update
        @car = Car.find(params[:id])
        car_params = params.require(:car).
        permit(:make, :model, :year, :color, :price)
        @car.update(car_params)
        redirect_to @car
    end

end
