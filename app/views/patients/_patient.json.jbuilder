json.extract! patient, :id, :last_name, :first_name, :date_of_birth, :gender, :race, :ethnicity, :address, :telephone_number, :previous_names, :national_ID, :NHIS_ID, :date_of_first_registration, :created_at, :updated_at
json.url patient_url(patient, format: :json)
