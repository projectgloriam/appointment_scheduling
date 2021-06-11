json.extract! appointment, :id, :start_time, :end_time_expected, :end_time, :cancelled, :cancelled_reason, :appointment_type, :patient_id, :patient_dismissal_id, :user_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
