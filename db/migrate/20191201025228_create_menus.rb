class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.text :name
      t.text :category
      t.integer :price
      t.integer :cost
      t.integer :costRate
      t.text :status
      t.integer :calorie
      t.datetime :date
      t.text :memo

      t.timestamps
    end
  end
end
