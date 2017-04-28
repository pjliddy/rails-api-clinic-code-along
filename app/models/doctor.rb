# frozen_string_literal: true

class Doctor < ApplicationRecord
  has_many :patients
end
