json.array!(@chems) do |chem|
  json.extract! chem, :id, :mfc, :quantity, :unit
  json.url chem_url(chem, format: :json)
end
