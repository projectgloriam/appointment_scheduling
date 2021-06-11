json.extract! patient_encounter, :id, :encounter_primary_physician, :encounter_disposition, :body_temperature, :blood_pressure, :random_blood_sugar, :pulse, :appointment_id, :patient_id, :service_type_id, :service_location_id, :created_at, :updated_at
json.url patient_encounter_url(patient_encounter, format: :json)
