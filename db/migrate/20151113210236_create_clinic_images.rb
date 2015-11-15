class CreateClinicImages < ActiveRecord::Migration
  def change
    create_table :clinic_images do |t|

      t.timestamps null: false
    end
  end
end
