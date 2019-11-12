class AddDefaultToUserReviews < ActiveRecord::Migration[5.2]
  def change
     change_column :users, :user_reviews, :integer, default: 0
     change_column :users, :trusted_reviewer, :boolean, default: false
  end
end
