class AddGroupRefToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :group, index: true
  end
end
