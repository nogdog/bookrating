class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.string :name_suffix

      t.timestamps null: false
    end
    add_index :authors, :last_name
    add_index :authors, :first_name
  end
end
