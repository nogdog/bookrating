class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :review, index: true, foreign_key: true
      t.references :rating_type, index: true, foreign_key: true
      t.integer :rating

      t.timestamps null: false
    end
  end
end
