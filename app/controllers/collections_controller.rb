class CollectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_collection, only: [:show, :edit, :update, :destroy]

  def show
    # @collection = Collection.find(params[:id])
    @pins = @collection.pins
     # @meal = Meal.find(params[:meal_id])
    # @mealphoto = Mealphoto.find(params[:meal_id])
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.user = current_user
    @collection.save
    # AJAX to stay on page
  end

  def edit
  end

  def update
    @collection.update(collection_params)
    redirect_to profile_path(current_user)
  end

  def destroy
    @collection.destroy
    redirect_to profile_path(current_user)
  end

  private

  def collection_params
    params.require(:collection).permit(:name)
  end

  def set_collection
    @collection = Collection.find(params[:id])
  end
end
