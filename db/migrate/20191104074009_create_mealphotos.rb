class CreateMealphotos < ActiveRecord::Migration[5.2]
  def change
    create_table :mealphotos do |t|
      t.string :photo
      t.references :meal, foreign_key: true

      t.timestamps
    end
  end
end
