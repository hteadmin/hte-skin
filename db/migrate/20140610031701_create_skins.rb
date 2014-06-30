class CreateSkins < ActiveRecord::Migration
  def change
    create_table :skins do |t|
      t.string :name
      t.text :specs
      t.text :detail
      t.decimal :price

      t.timestamps
    end
  end
end
