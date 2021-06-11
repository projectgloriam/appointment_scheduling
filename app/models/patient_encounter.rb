class PatientEncounter < ApplicationRecord
  belongs_to :appointment
  belongs_to :patient
  belongs_to :service_type
  belongs_to :service_location
end
