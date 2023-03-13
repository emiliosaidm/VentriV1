class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :cars
  has_one :emergency_contact
  has_one :address
  has_one :foreign_identification
  has_one :mexican_identification
  has_many :car_reviews
  has_many :rentals
  validates :first_name, :last_names,:nationality, :gender, :phone_number, :date_of_birth, presence: true

  def self.get_options_mexican_id
    ['Credencial para votar', 'Credencial para votar desde el extranjero', 'Visa de residencia permanente', 'Matrícula Circular' ]
  end
end
