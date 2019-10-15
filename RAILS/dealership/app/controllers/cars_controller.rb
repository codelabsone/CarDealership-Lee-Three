class CarsController < ApplicationController

before_action :require_admin, except: [:index, :show]

    def index
        @cars = Car.lowest_price
    end

    def show
        @car = Car.find(params[:id])

        if current_user
            @current_wish = current_user.wishes.find_by(car_id: @car.id)
        end
    end

    def edit
        @car = Car.find(params[:id])
    end

    def update
        @car = Car.find(params[:id])
        if @car.update(car_params)
            redirect_to @car, notice: 'Car modified.'
        else
            render :edit
        end
    end

    def new
        @car = Car.new
    end

    def create
        @car = Car.new(car_params)
        if @car.save
            redirect_to @car, notice: 'Car Sold.'
        else
            render :new
        end

    end

    def destroy
        @car = Car.find(params[:id])
        @car.destroy
        redirect_to root_path, notice: 'Enjoy your Purchase.'
    end

private

    def car_params
        params.require(:car).
        permit(:make, :model, :color, :year, :price, :image_file_name, :mileage)
    end

end
