json.array!(@farm_dros) do |farm_dro|
  json.extract! farm_dro, :id, :kod_farmak, :kodikos, :kof_morfh, :synthesh, :katharotht, :kodikos_kath, :delrec, :fprint
  json.url farm_dro_url(farm_dro, format: :json)
end
