json.array!(@mcfarmasts) do |mcfarmast|
  json.extract! mcfarmast, :id, :kod_farmak, :counter, :code_fyta, :tropoxrono, :code_asten, :fbcode, :dosh_farm, :kod_doshs
  json.url mcfarmast_url(mcfarmast, format: :json)
end
