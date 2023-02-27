class RentalPickUpLocation < ApplicationRecord
  belongs_to :rental_id
  belongs_to :pick_up_location_id
end
