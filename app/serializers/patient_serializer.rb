class PatientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :diagnosis, :doctor_id
end
