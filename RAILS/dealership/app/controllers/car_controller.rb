class CarController < ApplicationController

    def index
        @cars = Car.all
    end

    def show
        @car = Car.find(params[:id])
    end

    def edit
        @car = Car.find(params[:id])
    end

end
