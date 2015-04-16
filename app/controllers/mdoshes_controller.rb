class MdoshesController < ApplicationController
  before_action :set_mdosh, only: [:show, :edit, :update, :destroy]

  # GET /mdoshes
  # GET /mdoshes.json
  def index
    @mdoshes = Mdosh.all
  end

  def import
    Mdosh.import(params[:file])
    redirect_to mdoshes_url,notice:'Dosages successfully imported!'
  end

  # GET /mdoshes/1
  # GET /mdoshes/1.json
  def show
  end

  # GET /mdoshes/new
  def new
    @mdosh = Mdosh.new
  end

  # GET /mdoshes/1/edit
  def edit
  end

  # POST /mdoshes
  # POST /mdoshes.json
  def create
    @mdosh = Mdosh.new(mdosh_params)

    respond_to do |format|
      if @mdosh.save
        format.html { redirect_to @mdosh, notice: 'Mdosh was successfully created.' }
        format.json { render :show, status: :created, location: @mdosh }
      else
        format.html { render :new }
        format.json { render json: @mdosh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mdoshes/1
  # PATCH/PUT /mdoshes/1.json
  def update
    respond_to do |format|
      if @mdosh.update(mdosh_params)
        format.html { redirect_to @mdosh, notice: 'Mdosh was successfully updated.' }
        format.json { render :show, status: :ok, location: @mdosh }
      else
        format.html { render :edit }
        format.json { render json: @mdosh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mdoshes/1
  # DELETE /mdoshes/1.json
  def destroy
    @mdosh.destroy
    respond_to do |format|
      format.html { redirect_to mdoshes_url, notice: 'Mdosh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mdosh
      @mdosh = Mdosh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mdosh_params
      params.require(:mdosh).permit(:kod_doshs, :dosh)
    end
end
