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
    if @collection.save
        respond_to do |format|
        format.html { redirect_to meals_path }
        format.js  # <-- will render `app/views/collections/create.js.erb`
      end
    else
        respond_to do |format|
        format.html { render 'meals/index' }
        format.js  # <-- idem
      end
    end
  end

  def edit
  end

  def update
    @collection.update(collection_params)
    redirect_to profile_path(current_user)
  end

  def destroy
    @collection.destroy!
    redirect_to profile_path
  end

  private

  def collection_params
    params.require(:collection).permit(:name)
  end

  def set_collection
    @collection = Collection.find(params[:id])
  end
end
