json.array!(@mkatigoris) do |mkatigori|
  json.extract! mkatigori, :id, :code_kathg, :kod_kathg, :kode_kathg, :gkode_kathg, :dr_cod_kat, :edr_cod_kat, :code, :ovisible, :biocides, :kathgoria, :kathgories, :gkathg, :gkathgoria, :hkathgoria, :ghkathgoria
  json.url mkatigori_url(mkatigori, format: :json)
end
