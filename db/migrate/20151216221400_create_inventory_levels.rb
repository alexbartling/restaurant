class CreateInventoryLevels < ActiveRecord::Migration
  def change
    create_table :inventory_levels do |t|
      t.integer :quantity
      t.integer :menu_item_id

      t.timestamps null: false
    end
  end
end
