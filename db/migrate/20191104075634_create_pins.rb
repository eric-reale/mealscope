class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.references :meal, foreign_key: true
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
