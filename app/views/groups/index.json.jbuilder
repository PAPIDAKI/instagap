json.array!(@groups) do |group|
  json.extract! group, :id, :name, :address, :phone, :email
  json.url group_url(group, format: :json)
end
