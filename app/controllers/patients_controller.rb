# frozen_string_literal: true

class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :update, :destroy]

  # GET /patients
  # GET /patients.json
  def index
    @patients = Patient.all

    render json: @patients
  end

  # GET /patients/1
  # GET /patients/1.json
  def show
    render json: @patient
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def update
    if @patient.update(patient_params)
      head :no_content
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @patient.destroy

    head :no_content
  end

private
  def set_patient
    @patient = Patient.find(params[:id])
  end

# private :set_patient

  def patient_params
    params.require(:patient).permit(:born_on, :diagnosis, :name)
  end
end
