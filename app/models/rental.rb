class Rental < ApplicationRecord
  belongs_to :car_id
  belongs_to :user_id
end
