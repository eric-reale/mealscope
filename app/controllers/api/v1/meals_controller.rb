class Api::V1::MealsController < Api::V1::BaseController
  before_action :set_meal, only: [ :show ]
  def index
    @meals = policy_scope(Meal)
  end

  def show
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
    authorize @meal
  end
end
