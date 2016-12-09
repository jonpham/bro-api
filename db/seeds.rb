# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bro_list=[]
100.times do
  bro_list.push({name: Faker::Stoked.celebroty,bio:Faker::Stoked.bio,fav_food:Faker::Stoked.food,job:Faker::Stoked.job})
end

bro_list.each do |bro|
  Bro.create({name: bro[:name],bio: bro[:bio],fav_food: bro[:fav_food],job: bro[:job]})
end

