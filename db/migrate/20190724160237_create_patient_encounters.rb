class CreatePatientEncounters < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_encounters do |t|
      t.string :encounter_primary_physician
      t.string :encounter_disposition
      t.string :body_temperature
      t.string :blood_pressure
      t.string :random_blood_sugar
      t.string :pulse
      t.references :appointment, foreign_key: true
      t.references :patient, foreign_key: true
      t.references :service_type, foreign_key: true
      t.references :service_location, foreign_key: true

      t.timestamps
    end
  end
end
