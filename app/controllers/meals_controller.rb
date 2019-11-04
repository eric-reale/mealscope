class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update, :destroy]

  def index
    @meals = Meal.all
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
      @meal.user = current_user
      if @meal.save
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
        raise
        redirect_to meal_path(@meal)
      else
        raise
      render :new
    end
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

  def set_meal
    @meal = Meal.find(params[:meal_id])
  end

  def meal_params
    params.require(:meal).permit(:name, :description, :price, :meal_type, :diet_meal_tag_ids, :cuisine_meal_tag_ids) # :dietary, :cuisine, :photo)
    ## Match the names with the form. Params that are permitted are based on what's in the new meal form
  end
end
