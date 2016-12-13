json.array! @bros do |bro|
  json.partial! 'api/v2/bros/bro', bro: bro
end

