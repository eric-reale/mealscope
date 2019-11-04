class DietMealTag < ApplicationRecord
  belongs_to :diet_tag
  belongs_to :meal
end
