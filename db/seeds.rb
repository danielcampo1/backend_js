# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


tech = Category.create(name:"tech")
photography = Category.create(name:"photography")
real_estate = Category.create(name: "real_estate")
life = Category.create(name:"life")

Journal.create(title: "Life's pretty good!", description: "life isnt to bad right now! I got 2 dogs and a big bed with food on the table, with lots of plans to travel coming up soon", image_url: "https://seeklogo.com/images/L/LG_Life_s_Good-logo-9D1849FFBD-seeklogo.com.png", category_id: life.id)