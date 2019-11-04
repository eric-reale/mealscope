class CreateDietTags < ActiveRecord::Migration[5.2]
  def change
    create_table :diet_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
