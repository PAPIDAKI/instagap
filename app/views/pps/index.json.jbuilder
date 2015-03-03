json.array!(@pps) do |pp|
  json.extract! pp, :id, :date, :trade_name, :active_ingridient, :reason, :amount, :application_method, :tech_responsible, :operator, :persons, :note, :production_id
  json.url pp_url(pp, format: :json)
end
