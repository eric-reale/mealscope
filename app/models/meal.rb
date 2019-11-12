
class Meal < ApplicationRecord
  monetize :sponsored_posts_price_cents

  LOCATIONS = ['Canggu, Bali']
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

  has_many :orders

  validates :name, presence: true
  # validate the restaurant selection
  validates_numericality_of :price

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :meal_type],
    associated_against: {
      restaurant: [:name],
      cuisine_tags:[:name],
      diet_tags: [:name],
      meal_types: [:name],
    },
    using: {
      tsearch: { prefix: true }
    }

  pg_search_scope :cuisine_search,
    associated_against: {
      cuisine_tags:[:name],
    },
    using: {
      tsearch: { prefix: true, any_word: true }
    }

    pg_search_scope :diet_search,
    associated_against: {
      diet_tags:[:name],
    },
    using: {
      tsearch: { prefix: true, any_word: true }
    }

    pg_search_scope :meal_type_search,
    associated_against: {
      meal_types: [:name],
    },
    using: {
      tsearch: { prefix: true, any_word: true }
    }

  after_create :set_price

  def set_price
    self.sponsored_posts_price_cents = 50000
    self.sponsored_posts_price_cents.save
    self.sponsored_posts_price = (sponsored_posts_price_cents / 100)
    self.sponsored_posts_price.save
  end


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
