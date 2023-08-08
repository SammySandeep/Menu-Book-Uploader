class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.string :dish_name
      t.text :dish_description
      t.string :dish_type
      t.string :allergens
      t.string :Category
      t.decimal :Price

      t.timestamps
    end
  end
end
