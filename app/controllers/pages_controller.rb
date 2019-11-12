class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @collections = Collection.where(user: current_user)
    @reviews = Review.where(user: current_user)
    @my_restaurants = Restaurant.where(restaurants: {user: current_user})
    @my_restaurants.each do |restaurant|
      begin
        url = "https://www.instagram.com/#{restaurant.instagram_handle}?__a=1"
        user_serialized = open(url).read
        data = JSON.parse(user_serialized)
        counter = 0
        photos = []
        # restaurant.name[:instagram] = []
        6.times do
          photo = data["graphql"]["user"]["edge_owner_to_timeline_media"]["edges"][counter]["node"]["thumbnail_src"]
          photos << photo
          instance_variable_set("@photos_#{restaurant.id}", photos)
          counter += 1
        end
      rescue
      @photos = []
    end
  end
  end

  def error
  end

  def restaurant_owners
  end
end
