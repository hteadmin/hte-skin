class AddCategoryRefToSkins < ActiveRecord::Migration
  def change
    add_reference :skins, :category, index: true
  end
end
