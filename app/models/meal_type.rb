class MealType < ApplicationRecord

  MEAL_TYPE = ["Breakfast", "Lunch", "Dinner", "Snack", "Dessert", "Soft Drink", "Alcholic Drink"]

  validates :name, inclusion: { in: MEAL_TYPE }
end
