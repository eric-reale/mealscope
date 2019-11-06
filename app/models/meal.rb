class Meal < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  has_many :diet_meal_tags, dependent: :destroy
  has_many :cuisine_meal_tags, dependent: :destroy
  has_many :meal_type_tags, dependent: :destroy

  has_many :diet_tags, through: :diet_meal_tags
  has_many :cuisine_tags, through: :cuisine_meal_tags
  has_many :meal_types, through: :meal_type_tags

  has_many :mealphotos, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :pins, dependent: :destroy

  validates :name, presence: true
  # validate the restaurant selection
  validates_numericality_of :price



  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :meal_type],
    associated_against: {
      restaurant: [:name],
      cuisine_tags:[:name],
      diet_tags: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }



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

  def display_rating_count(count)
    if count > 0
      return " (#{count})"
    elsif count == 0
      return ""
    end
  end
end
