# frozen_string_literal: true
# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

Doctor.transaction do
  %w(alice bob charlie dana eliot franky gloria henry iulia).each do |name|
    doctor_params = {
      given_name: name,
      family_name: 'McDreamy'
    }
    next if Doctor.exists? doctor_params
    Doctor.create! doctor_params
  end
end

Patient.transaction do
  %w(alice bob charlie dana eliot franky gloria henry iulia).each do |name|
    full_name = "#{name} McFace"
    next if Patient.exists? name: full_name
    Patient.create!(name: full_name,
                    diagnosis: 'Addicted to Love',
                    born_on: '1986-01-01',
                    doctor: Doctor.all.sample)
  end
end

Appointment.transaction do
  require 'date'
  date_time = DateTime.now

  20.times do
    appointment_params = {
      patient: Patient.all.sample,
      doctor: Doctor.all.sample,
      start_at: date_time,
      length: 60
    }

    next if Appointment.exists? appointment_params
    Appointment.create!(appointment_params)
  end
end
