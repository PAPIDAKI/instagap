json.array!(@mfarmakos) do |mfarmako|
  json.extract! mfarmako, :id, :hmer_egris, :kod_farmak, :gbonoma, :emporikhon, :fprint, :common, :enimerosi, :amature_use, :tag, :mixture, :edr_cod_kat, :date_notification, :date_updateLdate, :kode, :num_protok, :num_protok-total, :tegris, :type_egris, :kat_number, :fys_katast, :fys-kat, :adate, :group, :morfhskeya, :bohthitike, :aposyrsh, :kod, :food, :stoxos, :trop_efar, :met_klima, :paraskeyas, :antiprosop, :contact_market, :contact_point, :code_toxik, :rcode, :telos_egri
  json.url mfarmako_url(mfarmako, format: :json)
end
