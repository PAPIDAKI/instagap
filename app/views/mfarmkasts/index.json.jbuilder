json.array!(@mfarmkasts) do |mfarmkast|
  json.extract! mfarmkast, :id, :counter, :kod_farmak, :code_fyta, :tropoxrono, :delrec, :general, :un_delete, :un_date
  json.url mfarmkast_url(mfarmkast, format: :json)
end
