class CreatePatientDismissals < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_dismissals do |t|
      t.string :status

      t.timestamps
    end
  end
end
