class CreateClinicStaffs < ActiveRecord::Migration
  def change
    create_table :clinic_staffs do |t|
      t.integer :clinic_id
      t.string :name
      t.string :description
      t.string :speciality

      t.timestamps null: false
    end
  end
end
