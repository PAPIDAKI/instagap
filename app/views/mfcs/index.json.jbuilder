json.array!(@mfcs) do |mfc|
  json.extract! mfc, :id, :farmako_id, :mcrop_id, :crops, :edr_cod_kat, :eidos, :emporikho, :gbonoma, :apsyrsh, :telos_egri, :un_delete, :soil
  json.url mfc_url(mfc, format: :json)
end
