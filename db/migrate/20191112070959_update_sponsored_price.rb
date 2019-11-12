class UpdateSponsoredPrice < ActiveRecord::Migration[5.2]
  def change
    change_column :meals, :sponsored_posts_price, :integer, default: 50
  end
end
