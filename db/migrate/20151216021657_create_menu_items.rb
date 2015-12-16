class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :description
      t.integer :price

      t.timestamps null: false
    end
  end
end
