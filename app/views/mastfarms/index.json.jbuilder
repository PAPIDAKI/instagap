json.array!(@mastfarms) do |mastfarm|
  json.extract! mastfarm, :id, :counter, :code_asten, :fbcode, :dosh_farm, :kod_doshs
  json.url mastfarm_url(mastfarm, format: :json)
end
