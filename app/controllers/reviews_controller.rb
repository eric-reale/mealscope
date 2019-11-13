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
        if params[:review][:meal_photos].present?
          params[:review][:meal_photos].each do |photo|
          po = Cloudinary::Uploader.upload(photo)
          meal_photo = Mealphoto.new(meal: @meal)
          meal_photo.remote_photo_url = po["url"]
          meal_photo.save
        end
      end
      # @meal.save
      redirect_to meal_path(@meal)
    else
      flash[:alert] = "Something went wrong."
      render 'meals/show'
    end
  end

  def edit
  end

  def update
    # @review.update(review_params)
    # redirect_to profile_path(current_user)
  end

  def destroy
    # @review.destroy!
    # redirect_to profile_path
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
