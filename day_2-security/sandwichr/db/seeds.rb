# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredients = Ingredient.create([
	{name: "bacon", calories: 200},
	{name: "lechuga", calories: 20}
	])

sandwiches = Sandwich.create([
	{name: "vegetal", bread_type: "gluten free"},
	{name: "fat", bread_type: "fatty"}
	])