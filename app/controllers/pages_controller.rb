class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @collections = Collection.where(user: current_user)
    @reviews = Review.where(user: current_user)
    @my_restaurants = Restaurant.where(restaurants: {user: current_user})
  end

  def error
  end

  def restaurant_owners
  end
end
