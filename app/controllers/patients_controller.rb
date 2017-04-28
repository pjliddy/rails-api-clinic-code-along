# frozen_string_literal: true

class PatientsController < ApplicationController
  before_action :set_patient, only: %i[show destroy update]

  def index
    @patients = Patient.all
    render json: @patients
  end

  def show
    # binding.pry
    render json: @patient
  end

  def update
    if @patient.update(patient_params)
      head :no_contnet
    else
      render json: @patient.error, status: :unprocessable_entity
    end
  end

  def create
    @patient = Patient.create(patient_params)

    if @patient.save
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @patient.destroy
    head :no_content # standard response for destroy
  end

  def set_patient
    # DRY => defines @patient for any method that needs to find it
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name)
  end
end
