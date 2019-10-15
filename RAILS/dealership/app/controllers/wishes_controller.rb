class WishesController < ApplicationController

before_action :require_signin

    def create
        @car = Car.find(params[:car_id])
        @car.wishes.create!(user: current_user)
        redirect_to @car, notice: 'Added to your list!'
    end

    def destroy
        @car = Car.find(params[:car_id])
        wish = current_user.wishes.find(params[:id])
        wish.destroy
        redirect_to @car, notice: 'Removed from your list.'
    end
end
