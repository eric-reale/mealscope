class CuisineMealTag < ApplicationRecord
  belongs_to :cuisine_tag
  belongs_to :meal
end
