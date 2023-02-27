class RentalExtraDriver < ApplicationRecord
  belongs_to :rental_id
  belongs_to :user_id
end
