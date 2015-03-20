json.array!(@systatiks) do |systatik|
  json.extract! systatik, :id, :kodikos, :omadron, :arxiko, :aposyrsh, :cipac, :dr_cod_kat, :old_new, :fao, :cas_number, :code_xhmik
  json.url systatik_url(systatik, format: :json)
end
