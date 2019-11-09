json.array! @meals do |meal|
  json.extract! meal, :id, :name, :average_rating
end
