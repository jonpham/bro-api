json.array! @bros do |bro|
  json.partial! 'v2/bros/bro', bro: bro
end

