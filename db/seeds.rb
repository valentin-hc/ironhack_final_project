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

Surfspot.create(name: "Tyson",
				country: "Spain",
				area: "Barcelona",
				description: "Tyson is a hollow Beachbreak, very fun when it's on",
				breaktype: "Beachbreak",
				longitude: 2.208294,
				latitude: 41.39345,
				avatar: File.new("public/images/tyson.jpg"))

Surfspot.create(name: "Barceloneta",
				country: "Spain",
				area: "Barcelona",
				description: "Nice rolling waves, worth checking when Tyson is not breaking well",
				breaktype: "Beachbreak",
				longitude: 2.203230,
				latitude: 41.390525,
				avatar: File.new("public/images/barceloneta.jpg"))

Surfspot.create(name: "Mar Bella",
				country: "Spain",
				area: "Barcelona",
				description: "Cool waves",
				breaktype: "Sandbar",
				longitude: 2.218294,
				latitude: 41.404046,
				avatar: File.new("public/images/mar-bella.jpg"))


Surfspot.create(name: "Sopelana",
				country: "Spain",
				area: "Bilbao",
				description: "Whatever",
				breaktype: "Beachbreak with rocks",
				longitude: -2.998280,
				latitude: 43.387787,
				avatar: File.new("public/images/sope.jpg"))

Surfspot.create(name: "La Salvaje",
				country: "Spain",
				area: "Bilbao",
				description: "Whatever",
				breaktype: "Beachbreak with rocks",
				longitude: -3.006734,
				latitude: 43.383405,
				avatar: File.new("public/images/la-salvaje.jpg"))