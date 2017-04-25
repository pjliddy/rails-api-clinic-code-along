class Doctor < ApplicationRecord
  # one-to-many
  has_many :primary_care_recipients, class_name: 'Patient', dependent: :destroy

  # many-to-many
  has_many :patients, through: :appointments
  has_many :appointments, dependent: :destroy

  # validations
  validates :given_name, presence: true
  validates :family_name, presence: true
end
