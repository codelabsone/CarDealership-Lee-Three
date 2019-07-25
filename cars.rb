class Cars

    attr_accessor :year, :make, :model, :color, :price, :mileage, :new_or_used
    def initialize(year, make, model, color, price)
        @year = year
        @make = make
        @model = model
        @color = color
        @price = price
    end

    def to_s
        "#{@year} #{@make.capitalize} #{@model.capitalize}, #{@color.capitalize}: $#{@price}"
    end

    def add_detail(mileage, new_or_used)
        @mileage = mileage
        @new_or_used = new_or_used
    end

    def details
        puts "\t#{@mileage} miles\n\tIn #{@new_or_used} condition."
    end

end
