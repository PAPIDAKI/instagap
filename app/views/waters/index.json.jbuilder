json.array!(@waters) do |water|
  json.extract! water, :id, :quantity, :unit
  json.url water_url(water, format: :json)
end
