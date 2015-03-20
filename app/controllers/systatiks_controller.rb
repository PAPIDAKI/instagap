class SystatiksController < ApplicationController
  before_action :set_systatik, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @systatiks = Systatik.all
    respond_with(@systatiks)
  end

  def import
	  Systatik.import(params[:file])
		redirect_to systatiks_url,notice: "Systatiks impoted successfully !"
  end

  def show
    respond_with(@systatik)
  end

  def new
    @systatik = Systatik.new
    respond_with(@systatik)
  end

  def edit
  end

  def create
    @systatik = Systatik.new(systatik_params)
    @systatik.save
    respond_with(@systatik)
  end

  def update
    @systatik.update(systatik_params)
    respond_with(@systatik)
  end

  def destroy
    @systatik.destroy
    respond_with(@systatik)
  end

  private
    def set_systatik
      @systatik = Systatik.find(params[:kodikos])
    end

    def systatik_params
      params.require(:systatik).permit(:kodikos, :omadron, :arxiko, :aposyrsh, :cipac, :dr_cod_kat, :old_new, :fao, :cas_number, :code_xhmik)
    end
end
