json.array!(@fertilizations) do |fertilization|
  json.extract! fertilization, :id, :date, :name, :type, :concentration, :amount, :application_method, :machinery, :approved_by, :operator, :note
  json.url fertilization_url(fertilization, format: :json)
end
