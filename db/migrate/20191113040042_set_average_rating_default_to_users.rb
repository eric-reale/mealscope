class SetAverageRatingDefaultToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :meals, :average_rating, :float, default: 0
  end
end
