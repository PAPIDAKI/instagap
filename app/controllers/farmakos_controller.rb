class FarmakosController < ApplicationController
  before_action :set_farmako, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @farmakos = Farmako.all.order(telos_egri: :desc)
    respond_with(@farmakos)
  end

  def import
		Farmako.import(params[:file])
		redirect_to farmakos_url
  end

  def show
    respond_with(@farmako)
  end

  def new
    @farmako = Farmako.new
    respond_with(@farmako)
  end

  def edit
  end

  def create
    @farmako = Farmako.new(farmako_params)
    @farmako.save
    respond_with(@farmako)
  end

  def update
    @farmako.update(farmako_params)
    respond_with(@farmako)
  end

  def destroy
    @farmako.destroy
    respond_with(@farmako)
  end

  private
    def set_farmako
      @farmako = Farmako.find(params[:kod_farmak])
    end

    def farmako_params
      params.require(:farmako).permit(:hmer_egris, :kod_farmak, :gbonoma, :emporikhon, :fprint, :common, :enimerosi, :amateur_use, :tag, :mixture, :edr_cod_kat, :date_notification, :date_update, :kode, :num_protok, :num_total, :tegris, :type_egris, :type_egris, :kat_number_egris, :fys_katast, :fys_kat, :group, :morfhskeya, :biothitike, :aposyrsi, :kod, :food, :stoxos, :tropos_efar, :met_klima, :paraskeyas, :antiprosop, :configontact_market, :contact_point, :code_toxik, :rcode, :telos_egri)
    end
end
