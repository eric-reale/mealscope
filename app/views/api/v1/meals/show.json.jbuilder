json.extract! @meal, :id, :name
json.reviews @meal.reviews do |review|
  json.extract! review, :id, :rating, :content
end
