json.array! @drinks.each do |drink|
  json.id drink.id
  json.Beverage drink.name
  json.AlcoholContent drink.ingredients
end