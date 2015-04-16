class McfarmastsController < ApplicationController
  before_action :set_mcfarmast, only: [:show, :edit, :update, :destroy]

  # GET /mcfarmasts
  # GET /mcfarmasts.json
  def index
    @mcfarmasts = Mcfarmast.all
  end

  def import
    Mcfarmast.import(params[:file])
    redirect_to mcfarmasts_url,notice:"Cfarmast list imported successfully!"
  end

  # GET /mcfarmasts/1
  # GET /mcfarmasts/1.json
  def show
  end

  # GET /mcfarmasts/new
  def new
    @mcfarmast = Mcfarmast.new
  end

  # GET /mcfarmasts/1/edit
  def edit
  end

  # POST /mcfarmasts
  # POST /mcfarmasts.json
  def create
    @mcfarmast = Mcfarmast.new(mcfarmast_params)

    respond_to do |format|
      if @mcfarmast.save
        format.html { redirect_to @mcfarmast, notice: 'Mcfarmast was successfully created.' }
        format.json { render :show, status: :created, location: @mcfarmast }
      else
        format.html { render :new }
        format.json { render json: @mcfarmast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mcfarmasts/1
  # PATCH/PUT /mcfarmasts/1.json
  def update
    respond_to do |format|
      if @mcfarmast.update(mcfarmast_params)
        format.html { redirect_to @mcfarmast, notice: 'Mcfarmast was successfully updated.' }
        format.json { render :show, status: :ok, location: @mcfarmast }
      else
        format.html { render :edit }
        format.json { render json: @mcfarmast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mcfarmasts/1
  # DELETE /mcfarmasts/1.json
  def destroy
    @mcfarmast.destroy
    respond_to do |format|
      format.html { redirect_to mcfarmasts_url, notice: 'Mcfarmast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mcfarmast
      @mcfarmast = Mcfarmast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mcfarmast_params
      params.require(:mcfarmast).permit(:kod_farmak, :counter, :code_fyta, :tropoxrono, :code_asten, :fbcode, :dosh_farm, :kod_doshs)
    end
end
