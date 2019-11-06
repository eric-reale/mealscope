class Meal < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  # belongs_to :pin

  has_many :diet_meal_tags, dependent: :destroy
  has_many :cuisine_meal_tags, dependent: :destroy
  has_many :diet_tags, through: :diet_meal_tags
  has_many :cuisine_tags, through: :cuisine_meal_tags
  has_many :mealphotos, dependent: :destroy
  has_many :reviews, dependent: :destroy # Confirm
  # has_many :pins, dependent: :destroy # Confirm, also for tags

  MEAL_TYPE = ["Breakfast", "Lunch", "Dinner", "Snack", "Dessert", "Soft Drink", "Alcholic Drink"]

  validates :name, presence: true
  validates :meal_type, inclusion: { in: MEAL_TYPE }
  validates_numericality_of :price


  def check_rating(rating)
    case rating
    when 5
      return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i>".html_safe
    when 4
      return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='far fa-star'></i>".html_safe
    when 3
      return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i>".html_safe
    when 2
      return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i>".html_safe
    when 1
      return "<i class='fas fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i>".html_safe
    else
      return "No reviews yet!"
    end
  end


  def class_colors
    number = self.average_rating.to_i
    return "rate-#{number}"
  end

  def display_rating_count(count)
    if count > 0
      return " (#{count})"
    elsif count == 0
      return ""
    end
  end
end
