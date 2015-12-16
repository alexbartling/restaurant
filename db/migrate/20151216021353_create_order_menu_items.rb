class CreateOrderMenuItems < ActiveRecord::Migration
  def change
    create_table :order_menu_items do |t|
      t.integer :menu_item_id
      t.integer :order_id
      t.integer :menu_item_quantity

      t.timestamps null: false
    end
  end
end
