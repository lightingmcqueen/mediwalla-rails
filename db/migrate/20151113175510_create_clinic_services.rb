class CreateClinicServices < ActiveRecord::Migration
  def change
    create_table :clinic_services do |t|
      t.integer :clinic_id
      t.integer :service_id

      t.timestamps null: false
    end
  end
end
