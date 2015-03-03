json.array!(@irrigations) do |irrigation|
  json.extract! irrigation, :id, :date, :duration, :qunatity, :operatorpersons, :note
  json.url irrigation_url(irrigation, format: :json)
end
