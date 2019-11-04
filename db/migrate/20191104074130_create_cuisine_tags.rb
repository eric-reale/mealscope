class CreateCuisineTags < ActiveRecord::Migration[5.2]
  def change
    create_table :cuisine_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
