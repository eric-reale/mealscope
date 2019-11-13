class Review < ApplicationRecord
  belongs_to :meal
  belongs_to :user

  # validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates_numericality_of :rating
  after_create :calculate_average_rating
  # after_destroy :calculate_average_rating

  after_create :add_review_to_user


  def calculate_average_rating
    ratings = self.meal.reviews.pluck(:rating)
    average_rating = (ratings.sum.to_f / ratings.count).round(half: :up)
    self.meal.average_rating = average_rating
    self.meal.save
  end

  def add_review_to_user
    self.user.user_reviews += 1
    self.user.trusted_reviewer_check
    self.user.save
  end


  def display_ratings
    case self.rating
    when 5
      return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i>".html_safe
    when 4
      return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='far fa-star'></i>".html_safe
    when 3
      return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i>".html_safe
    when 2
      return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i>".html_safe
    else
      return "<i class='fas fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i>".html_safe
    end
  end
end

