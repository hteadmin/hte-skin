class Category < ActiveRecord::Base
    has_many :skins
    belongs_to :group

    has_attached_file :photo, :styles => {:thumbs => ["160:160"]},
                      :path => ":rails_root/public/cate_photos/:id/:style/:basename.:extension",
                      :url => "/cate_photos/:id/:style/:basename.:extension"
    validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
