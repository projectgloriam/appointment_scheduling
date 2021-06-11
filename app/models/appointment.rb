class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :patient_dismissal
  belongs_to :user
end
