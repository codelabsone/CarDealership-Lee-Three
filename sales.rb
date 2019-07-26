require_relative 'inventory'

class Sales

    attr_accessor :name, :sales_staff, :listings, :budget
    def initialize(name)
        @name = name
        @sales_staff = []
        @budget
    end

    def add_staff(staff)
        @sales_staff << staff
    end

    def sale
        puts  "Welcome to European Imports. We offer only the finest imported vehicles for those with exquisite taste.\n
        So, how much are you looking to spend today? $$$:"
        cust_budget = gets.chomp.to_i

        @budget = cust_budget
        case @budget
        when > 100000
            #accomodate customer
        when 75000..100000
            display_budgeted_listings
        when 50000..74999
            #upsells customer
        else
            puts "I'm sorry, I'm going to have to ask you to leave."
        end

        puts "You're budget is $#{@budget}."
    end

    def display_budgeted_listings
        puts "Here are cars within your budget:"
        @listings.each do |car|
            puts car if car.price <= @budget
        end
    end




end
