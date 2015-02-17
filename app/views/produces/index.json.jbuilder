json.array!(@produces) do |produce|
  json.extract! produce, :id, :name
  json.url produce_url(produce, format: :json)
end
