#Collection of methods for the Menu Component of the Dealership Project.
module MenuMethods

    #Main Menu
    def self.menu(inventory)
        #Initial greeting
        splash
        puts "\n\tWelcome to European Imports."
        #Main options
        options
    end
    ###Sub Methods

    #Main menu splash screen
    def self.splash
        File.foreach("dealershiplogo.txt") { |line| puts line }
    end

    #Options for users
    def self.options
        puts "\n\tPlease select from the options below:"
        puts "\n\t1. View Entire Inventory\n\t2. Financing"
        puts "\t3. Search For Vehicles\n\t4. Exit"
        #Loop for answers
        choice = gets.chomp.to_i
        case choice
        when 1
            puts "\tThis is our entire inventory:\n"
            #display_listings
        when 2

        when 3
            search(inventory)
        when 4
            #exit
        end
    end

    #Search feature
    def self.search(inventory)
        #prompt
        puts "\nSearch by make, model, color, or year:\n"
        #Gets choice, and decides between year and all search criteria
        criteria = gets.chomp
        if criteria.to_i.to_s.eql?(criteria)
            criteria = criteria.to_i
        else
            criteria = criteria.capitalize
        end
        #Displaying matches
        puts "\nDisplaying all matches:"
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
#####End for module
