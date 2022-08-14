class CreateModels < ActiveRecord::Migration[7.0]
  def change
    create_table :models do |t|
      t.string :User
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.integer :house_number
      t.string :area
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
