# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

closet= Closet.create()
user= User.create(name: "Anette", email:"anette@anette.com", closet_id:closet.id)
item= Item.create(category: "tops", brand:"Old Navy", color: "green", season: "fall", image: "https://oldnavy.gap.com/webcontent/0019/225/939/cn19225939.jpg", closet_id: closet.id)
