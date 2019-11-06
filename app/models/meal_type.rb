class MealType < ApplicationRecord

  MEAL_TYPE = ["Breakfast", "Lunch", "Dinner", "Snack", "Dessert", "Soft Drink", "Alcholic Drink"]

  validates :name, inclusion: { in: MEAL_TYPE }
  has_many :meals, through: :meal_type_tags
end
