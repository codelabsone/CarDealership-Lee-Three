require_relative 'cars'
require_relative 'dealershipmethods'

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

    def purchase
        #needs written
    end

    def menu
        DealershipMethods.greeting
        choice = gets.chomp.to_i
        case choice
            when 1
                self.display_listings
                self.menu_return
            when 2
                DealershipMethods.budget_listings(@listings)
                self.menu_return
            when 3
                DealershipMethods.search(@listings)
                self.menu_return
            when 4
                self.purchase
                self.menu_return
            when 5
                #exit
        end
    end

    def menu_return
        puts "\nWhat would you like to do?"
        puts "\n\t1. Purchase Vehicle\n\t2. Return to Menu\n\t3. Exit\n"
        choice = gets.chomp.to_i
        case choice
            when 1
                #self.purchase
            when 2
                self.menu
            when 3
        end
    end



end
