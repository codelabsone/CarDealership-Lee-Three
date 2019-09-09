# creates working inventory for car listings
require_relative 'cars'

class Inventory

    attr_accessor :listings, :budget, :sale, :year, :make, :model, :color, :price

    def initialize
        @listings = []
        @profits = 0
    end

    def list(car)
        @listings << car
    end

    def display_listings
        puts "\nThis is our entire inventory:\n".center(100)
        puts @listings
    end

end
