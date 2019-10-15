class Car < ApplicationRecord

    validates :make, :model, presence: true
    validates :price, :mileage, :year, presence: true,
    numericality: {greater_than_or_equal_to: 0}

    has_many :wishes, dependent: :destroy
    has_many :wishers, through: :wishes, source: :user

    def self.lowest_price
        order("price")
    end

end
