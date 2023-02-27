class DriverEmergencyContact < ApplicationRecord
  belongs_to :emergency_contact_id
  belongs_to :user_id
end
