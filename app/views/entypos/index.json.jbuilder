json.array!(@entypos) do |entypo|
  json.extract! entypo, :id, :counter, :methodos, :stadio_season, :num_min, :num_max, :diast_min, :diast_max, :kgm-min, :kgm, :max, :lt_min, :lt_max, :kgmekt_min, :kgmekt_max, :comments
  json.url entypo_url(entypo, format: :json)
end
