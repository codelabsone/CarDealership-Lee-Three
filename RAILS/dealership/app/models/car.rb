class Car < ApplicationRecord

    def self.lowest_price
        order("price")
    end
    
end
