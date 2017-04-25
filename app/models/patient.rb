class Patient < ApplicationRecord
  # one-to-many
  belongs_to :primary_care_physician, class_name: 'Doctor', foreign_key: 'doctor_id'

  # many-to-many
  has_many :doctors, through: :appointments
  has_many :appointments, dependent: :destroy

  # validations
  validates :born_on, presence: true
  validates :name, presence: true
end
