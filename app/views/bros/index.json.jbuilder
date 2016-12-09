json.array! @bros do |bro|
  json.partial! 'bros/bro', bro: bro
end

