class Meal < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  def display_rating_count(count)
  if count > 0
    return " (#{count})"
  elsif count = 0
    return ""
  end
end
