class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :website_url
      t.string :instagram_handle

      t.timestamps
    end
  end
end
