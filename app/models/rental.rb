class Rental < ApplicationRecord
  belongs_to :car_id
  belongs_to :user_id
  belongs_to :pick_up_locations
  has_many :rental_drivers
  has_many :users, through: :rental_drivers
end
