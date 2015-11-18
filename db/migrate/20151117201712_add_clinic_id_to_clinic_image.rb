class AddClinicIdToClinicImage < ActiveRecord::Migration
  def change
    add_column :clinic_images, :clinic_id, :integer
  end
end
