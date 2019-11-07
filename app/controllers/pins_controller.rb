class PinsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pin, only: [:edit, :update, :destroy]


  def create
    @meal = Meal.find(params[:meal_id])
    @collection = Collection.find(params[:collection_id])
    @pin = Pin.new(meal: @meals, collection: @collection)
    @pin.save

    # @pin.meal = @meal
    # @pin.collection = @collection
  end

  def edit
  end

  def update
    @collection = Collection.find(params[:collection_id])
    @pin.collection = @collection
    @pin.save
    # redirect_to ?? (create a view first)
  end

  def destroy
    @pin.destroy
    # ???:
    redirect_to profile_path(current_user)
  end

  private

  def set_pin
    @pin = Pin.find(params[:id])
  end
  # Even TA wasn't sure about it, will see later:
  def pin_params
    params.require(:pin).permit(:meal_id, :collection_id) # Do we need this or pass it up above?
  end
end
