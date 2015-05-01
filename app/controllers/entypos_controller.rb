class EntyposController < ApplicationController
  before_action :set_entypo, only: [:show, :edit, :update, :destroy]


  def index
    @entypos = Entypo.all
  end

  def import
    Entypo.import(params[:file])
    
    redirect_to entypos_url
  end


  # GET /entypos/1
  # GET /entypos/1.json
  def show
  end

  # GET /entypos/new
  def new
    @entypo = Entypo.new
  end

  # GET /entypos/1/edit
  def edit
  end

  # POST /entypos
  # POST /entypos.json
  def create
    @entypo = Entypo.new(entypo_params)

    respond_to do |format|
      if @entypo.save
        format.html { redirect_to @entypo, notice: 'Entypo was successfully created.' }
        format.json { render :show, status: :created, location: @entypo }
      else
        format.html { render :new }
        format.json { render json: @entypo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entypos/1
  # PATCH/PUT /entypos/1.json
  def update
    respond_to do |format|
      if @entypo.update(entypo_params)
        format.html { redirect_to @entypo, notice: 'Entypo was successfully updated.' }
        format.json { render :show, status: :ok, location: @entypo }
      else
        format.html { render :edit }
        format.json { render json: @entypo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entypos/1
  # DELETE /entypos/1.json
  def destroy
    @entypo.destroy
    respond_to do |format|
      format.html { redirect_to entypos_url, notice: 'Entypo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

   private
    # Use callbacks to share common setup or constraints between actions.
    def set_entypo
      @entypo = Entypo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entypo_params
      params.require(:entypo).permit(:counter, :methodos, :stadio_season, :num_min, :num_max, :dias_min, :dias_max, :kgm_min, :kgm, :max, :lt_min, :lt_max, :kgmekt_min, :kgmekt_max, :comments)
    end
 end

