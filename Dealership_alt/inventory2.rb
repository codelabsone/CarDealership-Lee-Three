require_relative 'cars2'
require_relative 'MenuMethods'
#Main car lot methods
class Inventory2

    include MenuMethods
    attr_accessor :listings, :budget, :sale, :year, :make, :model, :color, :price

    def initialize
        @listings = []
        @profits = 0
    end

    def list(car)
        @listings << car
    end

    def to_s
        @listings.each do |car|
            puts car
        end
    end

end
