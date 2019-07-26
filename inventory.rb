require_relative 'cars'

class Inventory

    attr_accessor :listings, :budget
    attr_reader :year, :make, :model, :color, :price
    def initialize
        @listings = []
        @budget
    end

    def list(car)
        @listings << car
    end

    def display_listings
        puts @listings
    end



end
