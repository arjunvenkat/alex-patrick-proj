json.array!(@poopers) do |pooper|
  json.extract! pooper, :id, :interesection, :quality, :price
  json.url pooper_url(pooper, format: :json)
end
