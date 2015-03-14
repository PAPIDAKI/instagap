json.array!(@farmakos) do |farmako|
  json.extract! farmako, :id, :hmer_egris, :kod_farmak, :gbonoma, :emporikhon, :fprint, :common, :enimerosi, :amateur_use, :tag, :mixture, :edr_cod_kat, :date_notification, :date_update, :kode, :num_protok, :num_total, :tegris, :type_egris, :type_egris, :kat_number_egris, :fys_katast, :fys_kat, :group, :morfhskeya, :biothitike, :aposyrsi, :kod, :food, :stoxos, :tropos_efar, :met_klima, :paraskeyas, :antiprosop, :configontact_market, :contact_point, :code_toxik, :rcode, :telos_egri
  json.url farmako_url(farmako, format: :json)
end
