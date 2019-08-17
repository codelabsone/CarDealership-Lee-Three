# Main menu system for the Dealership Project
module Menu

    def self.menu(inventory)
        working_inventory = inventory.listings
        greeting
        options(working_inventory)
    end

    ########### Sub Methods ###########

    # Greeting and options
    def self.greeting
        File.foreach("dealershiplogo.txt") { |line| puts line }
        puts "\nWelcome to European Imports. How can we help you today?\n"
    end

    # Main options
    def self.options(inventory)
        # makes menu repeat until exit
        menu_active = true
        #passing in listings
        inventory = inventory
        loop do
            puts "\n\t1. List All Vehicles\n\t2. List Vehicles in Budget"
            puts "\t3. Vehicle Search\n\t4. Make Purchase\n\t5. Sell Vehicle\n\t6. Exit\n"
            choice = gets.chomp.to_i
            case choice
            when 1 # displays all vehicles
                display_listings(inventory)
                puts "\n What would you like to do?\n"
            when 2 # budgeted vehicles
                budget_listings(inventory)
                puts "\n What would you like to do?\n"
            when 3 # search feature
                search(inventory)
                puts "\n What would you like to do?\n"
            when 4  # purchase feature NEEDS METHOD
                puts "\nWe're sorry, that feature is not available right now."
                puts "\n What would you like to do?\n"
            when 5 # sale feature NEEDS METHOD
                puts "\nWe're sorry, that feature is not available right now."
                puts "\n What would you like to do?\n"
            when 6 # exits program
                menu_active = false
            end
        # escape
        break if menu_active == false
        end
    end

    ########### Options Methods ###########

    # displays listings
    def self.display_listings(inventory)
        puts "\n"
        inventory.each { |car| puts car }
    end

    # displays cars in customers budget
    def self.budget_listings(inventory)
        puts "\nPlease enter your budget-$$:"
        budget = gets.chomp.to_i
        puts "\n"
        inventory.each { |car| puts car if car.price <= budget}
    end

    # searches through vehicles
    def self.search(inventory)
        puts "\nSearch by make, model, color, or year:\n"
        # tests if year/make/model/color
        criteria = gets.chomp
        if criteria.to_i.to_s.eql?(criteria)
            criteria = criteria.to_i
        else
            criteria = criteria.capitalize
        end
        # finds matches
        puts "\nDisplaying Matches:\n\n"
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

end
