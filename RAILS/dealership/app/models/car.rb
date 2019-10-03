class Car < ApplicationRecord

    validates :make, :model, presence: true
    validates :price, :mileage, :year, presence: true,
    numericality: {greater_than_or_equal_to: 0}

    def self.lowest_price
        order("price")
    end

end
