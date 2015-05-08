json.array!(@mfarmkzizs) do |mfarmkziz|
  json.extract! mfarmkziz, :id, :counter, :mfarmako_id, :mcrop_id, :tropoxron, :delrec, :general, :un_delete, :undate
  json.url mfarmkziz_url(mfarmkziz, format: :json)
end
