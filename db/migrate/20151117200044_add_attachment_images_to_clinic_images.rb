class AddAttachmentImagesToClinicImages < ActiveRecord::Migration
  def self.up
    change_table :clinic_images do |t|
      t.attachment :images
    end
  end

  def self.down
    remove_attachment :clinic_images, :images
  end
end
