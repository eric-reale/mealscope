class ReviewsController < ApplicationController
  before_action :set_meal, only: [:new, :create ]

  def new
  end

  def create
  @review = Review.new(review_params)
  authorize @review
  authorize @meal
  @review.meal = @meal
  if @review.save
    redirect_to meal_path(@meal)
  else
    render 'meals/show'
  end
end

private

  def set_meal
    @meal = Meal.find(params[:meal_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
