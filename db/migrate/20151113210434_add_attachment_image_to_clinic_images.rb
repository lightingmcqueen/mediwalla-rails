class AddAttachmentImageToClinicImages < ActiveRecord::Migration
  def self.up
    change_table :clinic_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :clinic_images, :image
  end
end
