class MastfarmsController < ApplicationController
  before_action :set_mastfarm, only: [:show, :edit, :update, :destroy]

  # GET /mastfarms
  # GET /mastfarms.json
  def index
    @mastfarms = Mastfarm.limit(100)
  end

  def import
    Mastfarm.import(params[:file])
    redirect_to mastfarms_url,notice:"Mastfarms successfully imported!"
  end

  # GET /mastfarms/1
  # GET /mastfarms/1.json
  def show
  end

  # GET /mastfarms/new
  def new
    @mastfarm = Mastfarm.new
  end

  # GET /mastfarms/1/edit
  def edit
  end

  # POST /mastfarms
  # POST /mastfarms.json
  def create
    @mastfarm = Mastfarm.new(mastfarm_params)

    respond_to do |format|
      if @mastfarm.save
        format.html { redirect_to @mastfarm, notice: 'Mastfarm was successfully created.' }
        format.json { render :show, status: :created, location: @mastfarm }
      else
        format.html { render :new }
        format.json { render json: @mastfarm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mastfarms/1
  # PATCH/PUT /mastfarms/1.json
  def update
    respond_to do |format|
      if @mastfarm.update(mastfarm_params)
        format.html { redirect_to @mastfarm, notice: 'Mastfarm was successfully updated.' }
        format.json { render :show, status: :ok, location: @mastfarm }
      else
        format.html { render :edit }
        format.json { render json: @mastfarm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mastfarms/1
  # DELETE /mastfarms/1.json
  def destroy
    @mastfarm.destroy
    respond_to do |format|
      format.html { redirect_to mastfarms_url, notice: 'Mastfarm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mastfarm
      @mastfarm = Mastfarm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mastfarm_params
      params.require(:mastfarm).permit(:counter, :code_asten, :fbcode, :dosh_farm, :kod_doshs,:counterable_type)
    end
end
