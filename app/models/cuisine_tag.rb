class CuisineTag < ApplicationRecord

  CUISINE_TAG = []

  validates :name, inclusion: { in: CUISINE_TAG }

end
