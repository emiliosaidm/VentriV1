class AllUserDescription < ApplicationRecord
  belongs_to :user_id
  belongs_to :user_review_id
end
