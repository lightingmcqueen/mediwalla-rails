class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
      t.integer :clinic_admin_id
      t.string :name
      t.string :description
      t.string :services
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.integer :country_id
      t.string :zipcode_string
      t.string :coordinator
      t.string :ratings

      t.timestamps null: false
    end
  end
end
