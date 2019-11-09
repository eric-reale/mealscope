class RestaurantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_collection, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def restaurant_params
    params.require(:collection).permit(:name, :address, :website_url, :instagram_handle)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
