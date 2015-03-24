json.array!(@fertilizers) do |fertilizer|
  json.extract! fertilizer, :id, :brand, :type, :content, :quantiy, :unit
  json.url fertilizer_url(fertilizer, format: :json)
end
