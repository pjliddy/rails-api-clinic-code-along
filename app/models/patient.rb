# frozen_string_literal: true

class Patient < ApplicationRecord
  belongs_to :doctor
end
