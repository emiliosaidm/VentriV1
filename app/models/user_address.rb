class UserAddress < ApplicationRecord
  belongs_to :address_id
  belongs_to :user_id
end
