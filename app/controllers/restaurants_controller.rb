class RestaurantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user
    @restaurant.save
  end

  def show
  end

  def edit
    # TBD
  end

  def update
    # TBD
  end

  def destroy
    # TBD
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :website_url, :instagram_handle)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
