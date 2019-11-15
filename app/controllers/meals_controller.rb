require 'json'
require 'open-uri'

class MealsController < ApplicationController
#  before_action :authenticate_user!, except: [:index, :show] - need to fix for collections
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  def index
    # raise
    skip_authorization
    @collection = Collection.new # Instantiating a new collection to be made from the model index page
    @pin = Pin.new
    # session[:hq] = params[:query] unless params[:query].empty?
    # @home_query = params[:query] if params[:query].present?
    ###################################
    # CASE 1 if search query but filters are not present
    if params[:query].present? && (!params[:diet_tags].present? &&
      !params[:cuisine_tags].present? &&
      !params[:meal_tags].present?)
      @meals = Meal.global_search(params[:query])
      @meals = @meals.order(average_rating: :desc)
      @restaurants = []
      meals_ids = @meals.pluck(:restaurant_id)
      meals_ids.each do |id|
        resto = Restaurant.find(id)
        @restaurants << resto
      end

      unless @meals.count.zero?
        @restaurants = []
        meals_ids = @meals.pluck(:restaurant_id)
        meals_ids.each do |id|
          resto = Restaurant.find(id)
          @restaurants << resto
        end
        restaurants_with_latlng = @restaurants.select { |r| r.latitude.present? && r.longitude.present? }
        @markers = restaurants_with_latlng.map do |restaurant|
          {
            lat: restaurant.latitude,
            lng: restaurant.longitude,
            icon: 'https://res.cloudinary.com/ddnvsxspt/image/upload/v1573520165/icon-small_sliebt.svg',
            infoWindow: { content: render_to_string(partial: "/meals/map_box", locals: { restaurant: restaurant }) }
            # Uncomment the above line if you want each of your markers to display a info window when clicked
            # (you will also need to create the partial "/flats/map_box")
          }
        end
      end
    ########################################
    # CASE 2 if search query and filters are present
    elsif params[:query].present? && (params[:diet_tags].present? ||
      params[:cuisine_tags].present? ||
      params[:meal_tags].present?)
      @meals = []

      if params[:diet_tags].present?
        params[:diet_tags].each do
          result = Meal.diet_search(params[:diet_tags]).global_search(params[:query])
          @meals << result unless result.count.zero?
        end
      end

      if params[:cuisine_tags].present?
        params[:cuisine_tags].each do
          result = Meal.cuisine_search(params[:cuisine_tags]).global_search(params[:query])
          @meals << result unless result.count.zero?
        end
      end

      if params[:meal_tags].present?
        params[:meal_tags].each do
          result = Meal.meal_type_search(params[:meal_tags]).global_search(params[:query])
          @meals << result unless result.count.zero?
        end
      end

      # @meals = @meals.sort_by { |meal| -meal.average_rating }.flatten.uniq

      unless @meals.count.zero?
        @restaurants = []
        # @meals.each do |resto|
        #   @meals_ids << resto.id
        # end
        @meals = @meals[0]
        # @meal_ids = []
        @meals.each do |meal|
            resto = Restaurant.find(meal.restaurant.id)
            @restaurants << resto
        end
        restaurants_with_latlng = @restaurants.select { |r| r.latitude.present? && r.longitude.present? }
        @markers = restaurants_with_latlng.map do |restaurant|
          {
            lat: restaurant.latitude,
            lng: restaurant.longitude,
            icon: 'https://res.cloudinary.com/ddnvsxspt/image/upload/v1573520165/icon-small_sliebt.svg',
            infoWindow: { content: render_to_string(partial: "/meals/map_box", locals: { restaurant: restaurant }) }
            # Uncomment the above line if you want each of your markers to display a info window when clicked
            # (you will also need to create the partial "/flats/map_box")
          }
        end
      end
    #######################################
    # CASE 3 need to handle all cases where query not present but filters are
    elsif !params[:query].present? && (params[:diet_tags].present? ||
      params[:cuisine_tags].present? ||
      params[:meal_tags].present?)
      @meals = []


      if params[:cuisine_tags].present?
        params[:cuisine_tags].each do
          result = Meal.cuisine_search(params[:cuisine_tags])
          @meals << result unless result.count.zero?
          @meals.flatten!
        end
      end


      if params[:diet_tags].present?
        params[:diet_tags].each do
          result = Meal.diet_search(params[:diet_tags])
          allowed_diets = result.map(&:diet_tags).flatten!

          if params[:cuisine_tags].present?
            result = @meals.select { |meal| !(meal.diet_tags & allowed_diets).empty? }
            @meals = result unless result.count.zero?
          else
            @meals = result
          end
        end
      end



      if params[:meal_tags].present?
        params[:meal_tags].each do
          result = Meal.meal_type_search(params[:meal_tags])
          allowed_meal_types = result.map(&:meal_types).flatten!
          if params[:diet_tags].present?
            result = @meals.select { |meal| !(meal.meal_types & allowed_meal_types).empty? }
            @meals = result
          elsif params[:cuisine_tags].present?
            result = @meals.select { |meal| !(meal.meal_types & allowed_meal_types).empty? }
            # byebug
            @meals = result
          else
            @meals = result
          end
        end
      end

      # @meals = @meals.sort_by { |meal| -meal.average_rating }.flatten.uniq

      unless @meals.count.zero?
        @restaurants = []
        # @meals = @meals[0]
        # @meal_ids = []
        @meals.each do |meal|
            resto = Restaurant.find(meal.restaurant.id)
            @restaurants << resto
        end
        # meals_ids = @meals.pluck(:restaurant_id)
        # @meals_ids.each do |id|
        #   resto = Restaurant.find(id)
        #   @restaurants << resto
        # end
        restaurants_with_latlng = @restaurants.select { |r| r.latitude.present? && r.longitude.present? }
        @markers = restaurants_with_latlng.map do |restaurant|
          {
            lat: restaurant.latitude,
            lng: restaurant.longitude,
            icon: 'https://res.cloudinary.com/ddnvsxspt/image/upload/v1573520165/icon-small_sliebt.svg',
            infoWindow: { content: render_to_string(partial: "/meals/map_box", locals: { restaurant: restaurant }) }
            # Uncomment the above line if you want each of your markers to display a info window when clicked
            # (you will also need to create the partial "/flats/map_box")
          }
        end
      end
    # CASE 4 nothing
    #######################################
    else
      @meals = Meal.all
      @filtered_meal = @meals.filter { |meal| !meal.orders.empty? ? meal : nil }
      @meals = [@filtered_meal, Meal.all.order(average_rating: :desc)].flatten.uniq
      @restaurants = []
      meals_ids = @meals.pluck(:restaurant_id)
      meals_ids.each do |id|
        resto = Restaurant.find(id)
        @restaurants << resto
      end
      restaurants_with_latlng = @restaurants.select { |r| r.latitude.present? && r.longitude.present? }
      @markers = restaurants_with_latlng.map do |restaurant|
        {
          lat: restaurant.latitude,
          lng: restaurant.longitude,
            icon: 'https://res.cloudinary.com/ddnvsxspt/image/upload/v1573520165/icon-small_sliebt.svg',
            infoWindow: { content: render_to_string(partial: "/meals/map_box", locals: { restaurant: restaurant }) }
          # Uncomment the above line if you want each of your markers to display a info window when clicked
          # (you will also need to create the partial "/flats/map_box")
        }
      end
    end
    @meals = @meals.sort_by { |meal| -meal.average_rating }.flatten.uniq
  end

  def new
    @meal = Meal.new
    authorize @meal
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.photo_list = params[:meal][:meal_photos]
    @meal.restaurant_id = params[:restaurant] # edit from resto id
    @meal.restaurant = Restaurant.find(@meal.restaurant_id) if @meal.restaurant_id #new line
    authorize @meal
    @meal.user = current_user

    @restaurant = @meal.restaurant  if @meal.restaurant
    @other_meal = @restaurant.meals.where(name: @meal.name).first if( @meal.name && @restaurant )

    if @other_meal
        @previous_meal = @restaurant.meals.find_by_name(@meal.name)
        flash[:alert] = "The meal you entered already exists. See it here!"
        redirect_to meal_path(@other_meal)
    elsif params[:meal][:meal_photos].nil?
      @meal.valid?
      render :new
    elsif @meal.save
      params[:meal][:diet_meal_tag_ids].each do |tag|
        if tag.length > 0
        diet_tags = DietTag.find_by_name(tag)
        DietMealTag.create(meal: @meal, diet_tag: diet_tags)
        end
      end
      params[:meal][:cuisine_meal_tag_ids].each do |tag|
        if tag.length > 0
        cuisine_tags = CuisineTag.find_by_name(tag)
        CuisineMealTag.create(meal: @meal, cuisine_tag: cuisine_tags)
        end
      end
      params[:meal][:meal_type_tag_ids].each do |tag|
        if tag.length > 0
        meal_types = MealType.find_by_name(tag)
        MealTypeTag.create(meal: @meal, meal_type: meal_types)
        end
      end
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end

  def show
    skip_authorization
    @collection = Collection.new # Instantiating a new collection to be made from the model index page
    @pin = Pin.new
    @review = Review.new
    restaurant = @meal.restaurant
    @restaurant_meals = restaurant.meals
    url = "https://www.instagram.com/#{restaurant.instagram_handle}?__a=1"
    begin
      user_serialized = open(url).read
      data = JSON.parse(user_serialized)
      counter = 0
      @photos = []
      9.times do
        photo = data["graphql"]["user"]["edge_owner_to_timeline_media"]["edges"][counter]["node"]["thumbnail_src"]
        @photos << photo
        counter += 1
      end
    rescue
      @photos = []
    end
    p @photos
  end

  def edit
  end

  def update
      if @meal.update(meal_params)
        params[:meal][:meal_photos].each do |photo|
          po = Cloudinary::Uploader.upload(photo)
          meal_photo = Mealphoto.new(meal: @meal)
          meal_photo.remote_photo_url = po["url"]
          meal_photo.save
        end
        redirect_to meal_path(@meal)
      else
        render :new
      end
  end

  def destroy
    @meal.destroy
    redirect_to meals_path
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
    authorize @meal
  end

  def meal_params
    params.require(:meal).permit(:name, :description, :price, :meal_type, :restaurant_id, :diet_meal_tag_ids, :cuisine_meal_tag_ids, :meal_photos)
  end
end


