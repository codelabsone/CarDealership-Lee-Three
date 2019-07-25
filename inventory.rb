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

    def sale
        puts  " Welcome to European Imports!!! ".center(80, '$')
        puts "How much can you spend today?.......$$$:"
        cust_budget = gets.chomp.to_i
        @budget = cust_budget
        puts "You're budget is $#{@budget}."
    end

    def display_budgeted_listings
        puts "Here are cars within your budget:"
        @listings.each do |car|
            if car.price <= @budget
                puts car
            end
        end
    end

end
