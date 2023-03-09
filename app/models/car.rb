class Car < ApplicationRecord
  belongs_to :owner, class_name: :User, foreign_key: :user_id
  has_many :car_pick_up_locations
  has_many :pick_up_locations, through: :car_pick_up_locations
  has_one_attached :photo
end
