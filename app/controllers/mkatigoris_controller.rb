class MkatigorisController < ApplicationController
  before_action :set_mkatigori, only: [:show, :edit, :update, :destroy]

  # GET /mkatigoris
  # GET /mkatigoris.json
  def index
    @mkatigoris = Mkatigori.all
  end

  def import
    Mkatigori.import(params[:file])
    redirect_to mkatigoris_url,notice:"Categories successfully added!"
  end
  # GET /mkatigoris/1
  # GET /mkatigoris/1.json
  def show
  end

  # GET /mkatigoris/new
  def new
    @mkatigori = Mkatigori.new
  end

  # GET /mkatigoris/1/edit
  def edit
  end

  # POST /mkatigoris
  # POST /mkatigoris.json
  def create
    @mkatigori = Mkatigori.new(mkatigori_params)

    respond_to do |format|
      if @mkatigori.save
        format.html { redirect_to @mkatigori, notice: 'Mkatigori was successfully created.' }
        format.json { render :show, status: :created, location: @mkatigori }
      else
        format.html { render :new }
        format.json { render json: @mkatigori.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mkatigoris/1
  # PATCH/PUT /mkatigoris/1.json
  def update
    respond_to do |format|
      if @mkatigori.update(mkatigori_params)
        format.html { redirect_to @mkatigori, notice: 'Mkatigori was successfully updated.' }
        format.json { render :show, status: :ok, location: @mkatigori }
      else
        format.html { render :edit }
        format.json { render json: @mkatigori.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mkatigoris/1
  # DELETE /mkatigoris/1.json
  def destroy
    @mkatigori.destroy
    respond_to do |format|
      format.html { redirect_to mkatigoris_url, notice: 'Mkatigori was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mkatigori
      @mkatigori = Mkatigori.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mkatigori_params
      params.require(:mkatigori).permit(:code_kathg, :kod_kathg, :kode_kathg, :gkode_kathg, :dr_cod_kat, :edr_cod_kat, :code, :ovisible, :biocides, :kathgoria, :kathgories, :gkathg, :gkathgoria, :hkathgoria, :ghkathgoria)
    end
end
