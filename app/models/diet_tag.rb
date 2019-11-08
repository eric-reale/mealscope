class DietTag < ApplicationRecord

  DIET_TAG = ['Keto', 'Low Carb', 'Low/No Fat', 'Low Saturated Fat', 'Vegetarian', 'Vegan', 'Raw food', 'Gluten-free', 'Dairy-free', 'Low/No Sugar', 'Paleo', 'Carnivore']

  validates :name, inclusion: { in: DIET_TAG }
  has_many :meals, through: :diet_meal_tags

end
