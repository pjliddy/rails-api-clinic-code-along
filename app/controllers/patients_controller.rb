# frozen_string_literal: true

# :nodoc:
class PatientsController < ApplicationController
  def index
    @patients = Patient.all

    render json: @patients
  end
end
