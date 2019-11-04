class PinsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pin, only: [:edit, :update, :destroy]
  def create
    # @pin = Pin.new(pin_params)
    # @meal = Meal.find(params[:meal_id])
    # @collection = Collection.find(params[:collection_id])
    # authorize ????
    # @pin.meal = @meal
    # @pin.collection = @collection
    # @pin.save
  end

  def edit
  end

  def update
    @collection = Collection.find(params[:collection_id])
    @pin.collection = @collection
    @pin.save
    # redirect_to ??
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
  # ???????:
  def pin_params
    params.require(:pin).permit(:meal_id, :collection_id)
  end
end
