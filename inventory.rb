require_relative 'cars'
require_relative 'dealershipmethods'

class Inventory

    attr_accessor :listings, :budget, :sale
    attr_reader :year, :make, :model, :color, :price
    def initialize
        @listings = []
    end

    def list(car)
        @listings << car
    end

    def display_listings
        puts @listings
    end

    def menu
        puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$".center(100) + "\n\n"
        puts "E  U  R  O  P  E  A  N".center(100) + "\n\n"
        puts "I  M  P  O  R  T  S".center(100) + "\n\n"
        puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$".center(100) + "\n\n"
        puts "Welcome to European Imports: Only the finest imported sports cars. How may we help you today?".center(100)
        puts "\n\t1. List All Vehicles\n\t2. List Vehicles in Budget\n\t3. Vehicle Search\n\t4. Make Purchase\n\t5. Sell Vehicle\n\t6. Exit\n"

        choice = gets.chomp.to_i
        case choice
        when 1
            puts "\nThis is our entire inventory:\n".center(100)
            puts @listings
        when 2
            puts "\nPlease enter your budget...$$:"
            budget = gets.chomp.to_i
            puts "\n"
            @listings.each do |car|
                puts car if car.price <= budget
            end
        when 3
            puts "\nSearch by:"
            puts "\n\t1. Year\n\t2. Make\n\t3. Model\n\t4. Color\n"
            search_choice = gets.chomp.to_i
            puts "\n"
            case search_choice
            when 1
                puts "\nWhat year are you looking for ?\n"
                year_choice = gets.chomp.to_i
                puts "\n"
                @listings.each do |car|
                    puts car if car.year == year_choice
                end
            when 2
                "\nWhat make are you looking for ?\n"
                make_choice = gets.chomp.
                puts "\n"
                @listings.each do |car|
                    puts car if car.make == make_choice
                end
            end
        when 4
        end
    end



end
