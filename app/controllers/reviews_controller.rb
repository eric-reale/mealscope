class ReviewsController < ApplicationController
  before_action :set_meal, only: [:new, :create ]

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @review.user = current_user
    @review.meal = @meal
    if @review.save
      redirect_to meal_path(@meal)
    else
      flash[:alert] = "Something went wrong."
      render 'meals/show'
    end
  end

  def edit
    # TBD
  end

  def update
    # TBD
  end

  def destroy
    # TBD
  end

private

  def set_meal
    @meal = Meal.find(params[:meal_id])
    authorize @meal
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
