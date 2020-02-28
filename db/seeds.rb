require 'open-uri'
require 'json'# This file should contain all the record creation needed to seed the database with its default values.
# require_relative '../app/models/ingredient'
puts 'Cleaning database...'
# Ingredients.destroy_all

json = JSON.load(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"))

ingredients = json["drinks"]
 ingredients.each do |hash|
    p hash["strIngredient1"]
    Ingredient.create!(name: hash["strIngredient1"])
end

# Ingredient.create!(ingredients)
# puts 'Finished!'
