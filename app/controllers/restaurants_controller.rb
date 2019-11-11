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
    authorize @restaurant
    @restaurant.user = current_user
    redirect_to restaurant_path(@restaurant) if @restaurant.save

  end

  def show
    # if @restaurant.user = current_user
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
