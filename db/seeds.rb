# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "_______Destroying surf spots_______"
Surfspot.destroy_all


puts "______Creating new spots________"

Surfspot.create(name: "Spot 1",
				country: "Spain",
				area: "Barcelona",
				description: "Whatever",
				breaktype: "Beachbreak",
				longitude: 2.208294,
				latitude: 41.39345)

Surfspot.create(name: "Spot 2",
				country: "Spain",
				area: "Barcelona",
				description: "Whatever",
				breaktype: "Reefbreak",
				longitude: 2.203230,
				latitude: 41.390525)

Surfspot.create(name: "Spot 3",
				country: "Spain",
				area: "Barcelona",
				description: "Whatever",
				breaktype: "Sandbar",
				longitude: 2.218294,
				latitude: 41.404046)


Surfspot.create(name: "Sopelana",
				country: "Spain",
				area: "Bilbao",
				description: "Whatever",
				breaktype: "Beachbreak with rocks",
				longitude: -2.998280,
				latitude: 43.387787)

Surfspot.create(name: "La Salvaje",
				country: "Spain",
				area: "Bilbao",
				description: "Whatever",
				breaktype: "Beachbreak with rocks",
				longitude: -3.006734,
				latitude: 43.383405)