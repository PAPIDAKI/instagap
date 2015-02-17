class PmusController < ApplicationController
  before_action :set_pmu, only: [:show, :edit, :update, :destroy]

  # GET /pmus
  # GET /pmus.json
  def index
    @pmus = Pmu.all
  end

  # GET /pmus/1
  # GET /pmus/1.json
  def show
  end

  # GET /pmus/new
  def new
    @pmu = Pmu.new
  end

  # GET /pmus/1/edit
  def edit
  end

  # POST /pmus
  # POST /pmus.json
  def create
    @pmu = Pmu.new(pmu_params)

    respond_to do |format|
      if @pmu.save
        format.html { redirect_to @pmu, notice: 'Pmu was successfully created.' }
        format.json { render :show, status: :created, location: @pmu }
      else
        format.html { render :new }
        format.json { render json: @pmu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pmus/1
  # PATCH/PUT /pmus/1.json
  def update
    respond_to do |format|
      if @pmu.update(pmu_params)
        format.html { redirect_to @pmu, notice: 'Pmu was successfully updated.' }
        format.json { render :show, status: :ok, location: @pmu }
      else
        format.html { render :edit }
        format.json { render json: @pmu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmus/1
  # DELETE /pmus/1.json
  def destroy
    @pmu.destroy
    respond_to do |format|
      format.html { redirect_to pmus_url, notice: 'Pmu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pmu
      @pmu = Pmu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pmu_params
      params.require(:pmu).permit(:address, :location, :grower_id, :facilities)
    end
end
