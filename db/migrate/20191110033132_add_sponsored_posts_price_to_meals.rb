class AddSponsoredPostsPriceToMeals < ActiveRecord::Migration[5.2]
  def change
    add_column :meals, :sponsored_posts_price, :integer, default: 500
    add_monetize :meals, :sponsored_posts_price, currency: { present: false }
  end
end
