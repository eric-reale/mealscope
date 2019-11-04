class CreateCuisineMealTags < ActiveRecord::Migration[5.2]
  def change
    create_table :cuisine_meal_tags do |t|
      t.references :cuisine_tag, foreign_key: true
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end
