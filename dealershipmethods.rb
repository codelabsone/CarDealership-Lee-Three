module DealershipMethods

    # Splash for prompt
    def self.greeting
        File.foreach("dealershiplogo.txt") { |line| puts line }
        puts "\n\t1. List All Vehicles\n\t2. List Vehicles in Budget"
        puts "\t3. Vehicle Search\n\t4. Make Purchase\n\t5. Sell Vehicle\n\t6. Exit\n"

    end

    # Search feature for inventory
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
                #exit
            end
        end
    end

    # Displays listings within customer's budget
    def self.budget_listings(inventory)
        puts "\nPlease enter your budget-$$:"
        budget = gets.chomp.to_i
        inventory.each do |car|
            puts car if car.price <= budget
        end
    end

    #Removes vehicle for purchase and accepts funds
    def self.purchase(inventory)
        
    end

end
