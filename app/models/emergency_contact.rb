class EmergencyContact < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :phone_number, :relationship, presence: true
end
