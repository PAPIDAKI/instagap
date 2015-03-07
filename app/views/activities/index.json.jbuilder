json.array!(@activities) do |activity|
  json.extract! activity, :id, :date, :type, :note, :operator, :persons, :approved_by, :production_id
  json.url activity_url(activity, format: :json)
end
