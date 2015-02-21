class ProductionsController < ApplicationController
  before_action :set_production, only: [:show, :edit, :update, :destroy]

  # GET /productions
  # GET /productions.json
  def index
		@pmu=Pmu.find(params[:pmu_id])
    @productions = @pmu.productions
  end

  # GET /productions/1
  # GET /productions/1.json
  def shown
			@pmu=Pmu.find(params[:pmu_id])
			@production=@pmu.productions.find(params[:id])
  end

  # GET /productions/new
  def new
		@pmu=Pmu.find(params[:pmu_id])
    @production = @pmu.productions.new

  end

  # GET /productions/1/edit
  def edit
		@pmu=Pmu.find(params[:pmu_id])
		@production=@pmu.productions.find(params[:id])
  end

  # POST /productions
  # POST /productions.json
  def create
		@pmu=Pmu.find(params[:pmu_id])
    @production = @pmu.productions.new(production_params)
		if @production.save
			redirect_to pmu_production_path(@pmu,@production), notice: 'Production was successfully created.'
		else
			render :new
			end

  end

  # PATCH/PUT /productions/1
  # PATCH/PUT /productions/1.json
  def update

    respond_to do |format|
      if @production.update(production_params)
        format.html { redirect_to @production, notice: 'Production was successfully updated.' }
        format.json { render :show, status: :ok, location: @production }
      else
        format.html { render :edit }
        format.json { render json: @production.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productions/1
  # DELETE /productions/1.json
  def destroy
    @production.destroy
    respond_to do |format|
      format.html { redirect_to productions_url, notice: 'Production was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_production

	   # @pmu=Pmu.find(params[:pmu_id])
	    #@production = @pmu.productions.find(params[:id])

    end

    def set_pmu

	    #@pmu=Pmu.find(params[:pmu_id])
	    #@production=@pmu.productions
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def production_params
      params.require(:production).permit(:pmu_id, :produce_id, :variety, :plantation_year, :number_of_trees, :expected_quantitiy, :ehd)
    end
end
