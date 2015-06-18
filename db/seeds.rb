# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(category: "T-shirt", min_temp: 60, max_temp: 80) 
Category.create(category: "Sweater", min_temp: -10, max_temp: 30) 
Category.create(category: "Tank Top", min_temp: 70, max_temp: 120)