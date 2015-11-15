class CreateClinicAccreditations < ActiveRecord::Migration
  def change
    create_table :clinic_accreditations do |t|
      t.integer :clinic_id
      t.integer :accreditation_id

      t.timestamps null: false
    end
  end
end
