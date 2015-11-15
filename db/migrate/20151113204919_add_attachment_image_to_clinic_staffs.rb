class AddAttachmentImageToClinicStaffs < ActiveRecord::Migration
  def self.up
    change_table :clinic_staffs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :clinic_staffs, :image
  end
end
