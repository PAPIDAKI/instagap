json.array!(@mcrops) do |mcrop|
  json.extract! mcrop, :id, :code_fyta, :kathh, :eidos, :gonoma, :genenral, :code, :klartex, :no--stylesheet
  json.url mcrop_url(mcrop, format: :json)
end
