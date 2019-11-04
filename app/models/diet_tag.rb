class DietTag < ApplicationRecord

  DIET_TAG = []

  validates :name, inclusion: { in: DIET_TAG }

end
