json.array!(@growers) do |grower|
  json.extract! grower, :id, :name, :address, :phone
  json.url grower_url(grower, format: :json)
end
