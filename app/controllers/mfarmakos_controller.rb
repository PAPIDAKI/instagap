class MfarmakosController < ApplicationController
  before_action :set_mfarmako, only: [:show, :edit, :update, :destroy]

  # GET /mfarmakos
  # GET /mfarmakos.json
  def index
    @mfarmakos = Mfarmako.all.find_each
  end

  def import
    Mfarmako.import(params[:file])
    redirect_to mfarmakos_url
  end

  # GET /mfarmakos/1
  # GET /mfarmakos/1.json
  def show
  end

  # GET /mfarmakos/new
  def new
    @mfarmako = Mfarmako.new
  end

  # GET /mfarmakos/1/edit
  def edit
  end

  # POST /mfarmakos
  # POST /mfarmakos.json
  def create
    @mfarmako = Mfarmako.new(mfarmako_params)

    respond_to do |format|
      if @mfarmako.save
        format.html { redirect_to @mfarmako, notice: 'Mfarmako was successfully created.' }
        format.json { render :show, status: :created, location: @mfarmako }
      else
        format.html { render :new }
        format.json { render json: @mfarmako.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mfarmakos/1
  # PATCH/PUT /mfarmakos/1.json
  def update
    respond_to do |format|
      if @mfarmako.update(mfarmako_params)
        format.html { redirect_to @mfarmako, notice: 'Mfarmako was successfully updated.' }
        format.json { render :show, status: :ok, location: @mfarmako }
      else
        format.html { render :edit }
        format.json { render json: @mfarmako.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mfarmakos/1
  # DELETE /mfarmakos/1.json
  def destroy
    @mfarmako.destroy
    respond_to do |format|
      format.html { redirect_to mfarmakos_url, notice: 'Mfarmako was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mfarmako
      @mfarmako = Mfarmako.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mfarmako_params
      params.require(:mfarmako).permit(:hmer_egris, :kod_farmak, :gbonoma, :emporikhon, :fprint, :common, :enimerosi, :amateure_use, :tag, :mixture, :edr_cod_kat, :date_notification, :date_updateLdate, :kode, :num_protok, :num_protok_total, :tegris, :type_egris, :kat_number, :fys_katast, :fys_kat, :adate, :group, :morfhskeya, :bohthitike, :aposyrsh, :kod, :food, :stoxos, :trop_efar, :met_klima, :paraskeyas, :antiprosop, :contact_market, :contact_point, :code_toxik, :rcode, :telos_egri)
    end
end
