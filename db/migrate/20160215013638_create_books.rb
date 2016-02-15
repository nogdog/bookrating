class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :asin

      t.timestamps null: false
    end
    add_index :books, :asin
    add_index :books, :title
  end
end
