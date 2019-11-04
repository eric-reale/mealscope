class CreateDietMealTags < ActiveRecord::Migration[5.2]
  def change
    create_table :diet_meal_tags do |t|
      t.references :diet_tag, foreign_key: true
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end
