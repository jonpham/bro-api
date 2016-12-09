json.name     bro.name
json.bio      bro.bio
json.fav_food bro.fav_food
json.job      bro.job

json.tanktops bro.tanktops do |tanktop|
  json.color tanktop.color
  json.pattern tanktop.pattern
  json.size tanktop.size
end