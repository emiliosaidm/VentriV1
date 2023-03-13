class MexicanIdentification < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :type, presence: true
end
