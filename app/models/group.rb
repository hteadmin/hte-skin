class Group < ActiveRecord::Base
    has_many :skins
    has_many :categories
end
