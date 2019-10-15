class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true,
    format: /\A\S+@\S+\z/,
    uniqueness: { case_sensitive: false }

    has_many :wishes, dependent: :destroy
    has_many :wished_cars, through: :wishes, source: :car


    def self.authenticate(email, password)
        user = User.find_by(email: email)
        user && user.authenticate(password)
    end

end
