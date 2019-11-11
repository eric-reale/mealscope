class PinsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pin, only: [:edit, :update, :destroy]


  def create
    @meal = Meal.find(params[:meal_id])
    @collection = Collection.find(params[:collection_id])
    authorize @meal
    authorize @collection
    @pin = Pin.new(meal: @meal, collection: @collection)
    authorize @pin
    if @pin.save
        respond_to do |format|
        format.html { redirect_to meals_path }
        format.js  # <-- will render `app/views/pins/create.js.erb`
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
    @collection = Collection.find(params[:collection_id])
    @pin.collection = @collection
    @pin.save
    # redirect_to ?? (create a view first)
  end

  def destroy
    @collection = @pin.collection
      if @pin.destroy
        respond_to do |format|
        format.html { redirect_to meals_path }
        format.js  # <-- will render `app/views/pins/create.js.erb`
      end
    else
        respond_to do |format|
        format.html { render 'meals/index' }
        format.js  # <-- idem
      end
    end
  end

  private

  def set_pin
    @pin = Pin.find(params[:id])
    authorize @pin
  end
end
