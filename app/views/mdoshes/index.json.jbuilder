json.array!(@mdoshes) do |mdosh|
  json.extract! mdosh, :id, :kod_doshs, :dosh
  json.url mdosh_url(mdosh, format: :json)
end
