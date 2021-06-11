class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.timestamp :start_time
      t.datetime :end_time_expected
      t.timestamp :end_time
      t.boolean :cancelled
      t.text :cancelled_reason
      t.string :appointment_type
      t.references :patient, foreign_key: true
      t.references :patient_dismissal, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
