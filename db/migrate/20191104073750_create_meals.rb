class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.float :price
      t.string :meal_type
      t.float :average_rating, default: 0
      t.references :user, foreign_key: true
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
