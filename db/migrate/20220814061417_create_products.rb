class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :type
      t.string :image_url
      t.decimal :price
      t.integer :discount
      t.integer :stock

      t.timestamps
    end
  end
end
