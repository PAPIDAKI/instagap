class MastheniaController < ApplicationController
  before_action :set_masthenium, only: [:show, :edit, :update, :destroy]

  # GET /masthenia
  # GET /masthenia.json
  def index
    @masthenia = Masthenium.all
  end

  def import 
    Masthenium.import(params[:file])
    redirect_to masthenia_url,notice:"Asthenias successfuly imported!"
  end

  # GET /masthenia/1
  # GET /masthenia/1.json
  def show
  end

  # GET /masthenia/new
  def new
    @masthenium = Masthenium.new
  end

  # GET /masthenia/1/edit
  def edit
  end

  # POST /masthenia
  # POST /masthenia.json
  def create
    @masthenium = Masthenium.new(masthenium_params)

    respond_to do |format|
      if @masthenium.save
        format.html { redirect_to @masthenium, notice: 'Masthenium was successfully created.' }
        format.json { render :show, status: :created, location: @masthenium }
      else
        format.html { render :new }
        format.json { render json: @masthenium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masthenia/1
  # PATCH/PUT /masthenia/1.json
  def update
    respond_to do |format|
      if @masthenium.update(masthenium_params)
        format.html { redirect_to @masthenium, notice: 'Masthenium was successfully updated.' }
        format.json { render :show, status: :ok, location: @masthenium }
      else
        format.html { render :edit }
        format.json { render json: @masthenium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masthenia/1
  # DELETE /masthenia/1.json
  def destroy
    @masthenium.destroy
    respond_to do |format|
      format.html { redirect_to masthenia_url, notice: 'Masthenium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_masthenium
      @masthenium = Masthenium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def masthenium_params
      params.require(:masthenium).permit(:code_asten, :astenia, :nastenia)
    end
end
