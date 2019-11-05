class CreateMealTypeTags < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_type_tags do |t|
      t.references :meal_type, foreign_key: true
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end
