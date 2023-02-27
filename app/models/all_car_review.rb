class AllCarReview < ApplicationRecord
  belongs_to :car_id
  belongs_to :car_reviews_id
end
