class DietTag < ApplicationRecord

  DIET_TAG = ['vegan', 'vegetarian']

  validates :name, inclusion: { in: DIET_TAG }

end
