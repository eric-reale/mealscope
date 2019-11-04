class DietTag < ApplicationRecord

  DIET_TAG = ['Keto', 'Low Carb', 'Low or No Fat', 'Low Saturated Fat', 'Vegetarian', 'Vegan', 'Raw food', 'Gluten-free', 'Dairy-free', 'Low or No Sugar', 'Paleo',  'Mediterranean', 'Carnivore']

  validates :name, inclusion: { in: DIET_TAG }

end
