class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :email

      t.timestamps null: false
    end
    add_index :users, :login
  end
end
