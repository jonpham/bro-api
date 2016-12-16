# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Bro.destroy_all
Tanktop.destroy_all

bro_list=[]
100.times do
  bro_list.push({name: Faker::Stoked.celebroty,bio:Faker::Stoked.bio,fav_food:Faker::Stoked.food,job:Faker::Stoked.job})
end

bro_list.each do |bro|
  Bro.create({name: bro[:name],bio: bro[:bio],fav_food: bro[:fav_food],job: bro[:job]})
end

tanktop_list=[]
sizes = ['S','M','L','XL','XXL','XS']

200.times do 
  tanktop_list.push({color: Faker::Color.color_name, size: sizes.sample, pattern: Faker::Pokemon.name})
end

tanktop_list.each do | tanktop |
  Tanktop.create(color: tanktop[:color] , size:tanktop[:size], pattern: tanktop[:pattern], bro_id: Bro.ids.sample )
end

User.create({
  first_name: "asdf", 
  last_name: "querty",
  email: "user@inter.net",
  password: "asdf",
  password_confirmation: "asdf",
  api_key: "1234567890"
})

