class MealTypeTag < ApplicationRecord
  belongs_to :meal_type
  belongs_to :meal
end
