class Cars

    attr_accessor :year, :make, :model, :color, :price, :mileage, :new_or_used
    def initialize(year, make, model, color, price)
        @year = year
        @make = make.capitalize
        @model = model.capitalize
        @color = color.capitalize
        @price = price
    end

    def to_s
        "#{@year} #{@make} #{@model}, #{@color}: $#{@price}"
    end

    def add_detail(mileage, new_or_used)
        @mileage = mileage
        @new_or_used = new_or_used
    end

    def details
        puts "\t#{@mileage} miles\n\tIn #{@new_or_used} condition."
    end

end
