class AddGroupRefToSkins < ActiveRecord::Migration
  def change
    add_reference :skins, :group, index: true
  end
end
