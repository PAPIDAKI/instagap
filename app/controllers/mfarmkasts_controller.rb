class MfarmkastsController < ApplicationController
  before_action :set_mfarmkast, only: [:show, :edit, :update, :destroy]

  # GET /mfarmkasts
  # GET /mfarmkasts.json
  def index
    @mfarmkasts = Mfarmkast.limit(50).order(:updated_at)
  end
  def import 
    Mfarmkast.import(params[:file])
    redirect_to mfarmkasts_url,notice:"Mfarmkasts successfully imported!"
    end

  # GET /mfarmkasts/1
  # GET /mfarmkasts/1.json
  def show
  end

  # GET /mfarmkasts/new
  def new
    @mfarmkast = Mfarmkast.new
  end

  # GET /mfarmkasts/1/edit
  def edit
  end

  # POST /mfarmkasts
  # POST /mfarmkasts.json
  def create
    @mfarmkast = Mfarmkast.new(mfarmkast_params)

    respond_to do |format|
      if @mfarmkast.save
        format.html { redirect_to @mfarmkast, notice: 'Mfarmkast was successfully created.' }
        format.json { render :show, status: :created, location: @mfarmkast }
      else
        format.html { render :new }
        format.json { render json: @mfarmkast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mfarmkasts/1
  # PATCH/PUT /mfarmkasts/1.json
  def update
    respond_to do |format|
      if @mfarmkast.update(mfarmkast_params)
        format.html { redirect_to @mfarmkast, notice: 'Mfarmkast was successfully updated.' }
        format.json { render :show, status: :ok, location: @mfarmkast }
      else
        format.html { render :edit }
        format.json { render json: @mfarmkast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mfarmkasts/1
  # DELETE /mfarmkasts/1.json
  def destroy
    @mfarmkast.destroy
    respond_to do |format|
      format.html { redirect_to mfarmkasts_url, notice: 'Mfarmkast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mfarmkast
      @mfarmkast = Mfarmkast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mfarmkast_params
      params.require(:mfarmkast).permit(:counter, :mfarmako_id ,:mcrop_id, :tropoxrono, :delrec, :general, :un_delete, :un_date)
    end
end
