class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :manager_name
      t.string :restaurant_name

      t.timestamps null: false
    end
  end
end
