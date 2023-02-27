class CarPickUpLocation < ApplicationRecord
  belongs_to :car_id
  belongs_to :pick_up_location
end
