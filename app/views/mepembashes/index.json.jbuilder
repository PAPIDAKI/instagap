json.array!(@mepembashes) do |mepembash|
  json.extract! mepembash, :id, :kod_farmak, :code_fyta, :diast_pros, :comments, :delrec
  json.url mepembash_url(mepembash, format: :json)
end
