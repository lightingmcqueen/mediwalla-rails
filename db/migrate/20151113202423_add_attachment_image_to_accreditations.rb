class AddAttachmentImageToAccreditations < ActiveRecord::Migration
  def self.up
    change_table :accreditations do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :accreditations, :image
  end
end
