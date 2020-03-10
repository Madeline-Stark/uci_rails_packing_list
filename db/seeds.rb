# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

items = {rollerblades: 2, helmet: 1, knee_pads: 20, water_bottle: 3, band_aids: 30, alcohol_wipes: 5, snack: 35}
items.each{|i, q| Item.create(name: i, quantity: q)}