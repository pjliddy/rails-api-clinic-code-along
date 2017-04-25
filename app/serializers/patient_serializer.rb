class PatientSerializer < ActiveModel::Serializer
  attributes :id, :name, :born_on, :diagnosis, :doctors, :primary_care_physician
end
