class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :last_name
      t.string :first_name
      t.date :date_of_birth
      t.string :gender
      t.string :race
      t.string :ethnicity
      t.string :address
      t.string :telephone_number
      t.string :previous_names
      t.string :national_ID
      t.string :NHIS_ID
      t.date :date_of_first_registration

      t.timestamps
    end
  end
end
