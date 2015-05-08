class MfarmkzizsController < ApplicationController
  before_action :set_mfarmkziz, only: [:show, :edit, :update, :destroy]

  # GET /mfarmkzizs
  # GET /mfarmkzizs.json
  def index
    @mfarmkzizs = Mfarmkziz.all
  end

  def import
    Mfarmkziz.import(params[:file])
    redirect_to mfarmkzizs_url,notice:"Mfarkziz successfully imported"
  end

  # GET /mfarmkzizs/1
  # GET /mfarmkzizs/1.json
  def show
  end

  # GET /mfarmkzizs/new
  def new
    @mfarmkziz = Mfarmkziz.new
  end

  # GET /mfarmkzizs/1/edit
  def edit
  end

  # POST /mfarmkzizs
  # POST /mfarmkzizs.json
  def create
    @mfarmkziz = Mfarmkziz.new(mfarmkziz_params)

    respond_to do |format|
      if @mfarmkziz.save
        format.html { redirect_to @mfarmkziz, notice: 'Mfarmkziz was successfully created.' }
        format.json { render :show, status: :created, location: @mfarmkziz }
      else
        format.html { render :new }
        format.json { render json: @mfarmkziz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mfarmkzizs/1
  # PATCH/PUT /mfarmkzizs/1.json
  def update
    respond_to do |format|
      if @mfarmkziz.update(mfarmkziz_params)
        format.html { redirect_to @mfarmkziz, notice: 'Mfarmkziz was successfully updated.' }
        format.json { render :show, status: :ok, location: @mfarmkziz }
      else
        format.html { render :edit }
        format.json { render json: @mfarmkziz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mfarmkzizs/1
  # DELETE /mfarmkzizs/1.json
  def destroy
    @mfarmkziz.destroy
    respond_to do |format|
      format.html { redirect_to mfarmkzizs_url, notice: 'Mfarmkziz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mfarmkziz
      @mfarmkziz = Mfarmkziz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mfarmkziz_params
      params.require(:mfarmkziz).permit(:counter, :mfarmako_id, :mcrop_id, :tropoxron, :delrec, :general, :un_delete, :undate)
    end
end
