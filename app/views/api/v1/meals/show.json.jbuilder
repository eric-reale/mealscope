json.extract! @meal, :id, :name, :description, :price, :average_rating
  json.reviews @meal.reviews do |review|
    json.extract! review, :id, :rating, :content
  # json.diet_meal_tags @meal.diet_meal_tags do |tag|
  #   json.extract! diet_meal_tags, :id
  # end
end
