class MfcsController < ApplicationController
  before_action :set_mfc, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mfcs = Mfc.all
    respond_with(@mfcs)
  end

  def import
		Mfc.import(params[:file])
		redirect_to mfcs_url
  end

  def show
    respond_with(@mfc)
  end

  def new
    @mfc = Mfc.new
    respond_with(@mfc)
  end

  def edit
  end

  def create
    @mfc = Mfc.new(mfc_params)
    @mfc.save
    respond_with(@mfc)
  end

  def update
    @mfc.update(mfc_params)
    respond_with(@mfc)
  end

  def destroy
    @mfc.destroy
    respond_with(@mfc)
  end

  private
    def set_mfc
      @mfc = Mfc.find(params[:id])
    end

    def mfc_params
      params.require(:mfc).permit(:farmako_id, :mcrop_id, :crops, :edr_cod_kat, :eidos, :emporikhon, :gbonoma, :aposyrsh, :telos_egri, :un_delete,:un_date ,:soil)
    end
end
