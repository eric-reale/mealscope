class RestaurantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = policy_scope(Restaurant)
  end

  def new
    @restaurant = Restaurant.new
    authorize @restaurant
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    pattern = /https+:+\/\/www+.+instagram.com\/|\//
    @restaurant.instagram_handle = @restaurant.instagram_handle.match?(pattern) ? @restaurant.instagram_handle.gsub(pattern, "") : @restaurant.instagram_handle
    authorize @restaurant
    @restaurant.user = current_user
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    restaurant = @restaurant
    @meals = restaurant.meals
    url = "https://www.instagram.com/#{restaurant.instagram_handle}?__a=1"
    begin
      user_serialized = open(url).read
      data = JSON.parse(user_serialized)
      counter = 0
      @photos = []
      6.times do
        photo = data["graphql"]["user"]["edge_owner_to_timeline_media"]["edges"][counter]["node"]["thumbnail_src"]
        @photos << photo
        counter += 1
      end
    rescue
      @photos = []
    end
    p @photos # if @restaurant.user = current_user
  end

  def edit
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to profile_path
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurant_path(@restaurant)
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :website_url, :instagram_handle)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant
  end
end
