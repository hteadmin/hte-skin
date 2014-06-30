class Skin < ActiveRecord::Base
    belongs_to :category
    belongs_to :group

    has_attached_file :photo, :styles => {:medium => ["512x512"], :thumb => ["240x240"]},
                        :path => ":rails_root/public/photos/:id/:style/:basename.:extension",
                        :url => "/photos/:id/:style/:basename.:extension"
    validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
