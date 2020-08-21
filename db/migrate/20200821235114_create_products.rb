class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.integer :user_id
      t.string :vendor_name

      t.timestamps null: false
    end
  end
end
