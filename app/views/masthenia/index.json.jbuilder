json.array!(@masthenia) do |masthenium|
  json.extract! masthenium, :id, :code_asten, :astenia, :nastenia
  json.url masthenium_url(masthenium, format: :json)
end
