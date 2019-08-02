module DealershipMethods

    def self.greeting
        puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$".center(100) + "\n\n"
        puts "E  U  R  O  P  E  A  N".center(100) + "\n\n"
        puts "I  M  P  O  R  T  S".center(100) + "\n\n"
        puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$".center(100) + "\n\n"
        puts "Welcome to European Imports: Only the finest imported sports cars. How may we help you today?".center(100)
        puts "\n\t1. List All Vehicles\n\t2. List Vehicles in Budget\n\t3. Vehicle Search\n\t4. Make Purchase\n\t5. Sell Vehicle\n\t6. Exit\n"

    end

    def self.search(inventory)
        puts "\nSearch by make, model, color, or year:\n"
        criteria = gets.chomp
        if criteria.to_i.to_s.eql?(criteria)
            criteria = criteria.to_i
        else
            criteria = criteria.capitalize
        end
        puts "\nDisplaying Matches:\n"
        inventory.each do |car|
            if criteria === car.make
                puts car
            elsif criteria === car.model
                puts car
            elsif criteria === car.color
                puts car
            elsif criteria === car.year
                puts car
            else
            end
        end

    end

    def self.budget_listings(inventory)
        puts "\nPlease enter your budget-$$:"
        budget = gets.chomp.to_i
        inventory.each do |car|
            puts car if car.price <= budget
        end

    end

end
