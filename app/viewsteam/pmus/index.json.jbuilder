json.array!(@pmus) do |pmu|
  json.extract! pmu, :id, :address, :location, :grower_id, :facilities
  json.url pmu_url(pmu, format: :json)
end
