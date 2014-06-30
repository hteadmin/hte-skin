class AddAttachmentPhotoToSkins < ActiveRecord::Migration
  def self.up
    change_table :skins do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :skins, :photo
  end
end
