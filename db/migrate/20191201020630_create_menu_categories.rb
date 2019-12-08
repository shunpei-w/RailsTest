class CreateMenuCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_categories do |t|
      t.text :categoryName

      t.timestamps
    end
  end
end
