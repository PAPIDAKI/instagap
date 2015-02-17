json.array!(@productions) do |production|
  json.extract! production, :id, :pmu_id, :produce_id, :variety, :plantation_year, :number_of_trees, :expected_quantitiy, :ehd
  json.url production_url(production, format: :json)
end
