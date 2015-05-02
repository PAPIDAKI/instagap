class ProductionsController < ApplicationController
  before_action :set_production, only: [:show, :edit, :update, :destroy]

  # GET /productions
  # GET /productions.json
  def index
		if params[:pmu_id]
		@pmu=Pmu.find(params[:pmu_id])
    @productions = @pmu.productions
		else
			@production=Production.find(params[:id])
			@pmu=@production.pmu
		end
  end

  # GET /productions/1/edit
  def edit
		if params[:pmu_id]
		@pmu=Pmu.find(params[:pmu_id])
		@production=@pmu.productions.find(params[:id])
		else
			@production=Production.find(params[:id])
			@pmu=@production.pmu
		end
  end


  # GET /productions/new
  def new
	  @pmu=Pmu.find(params[:pmu_id])
	  @production = @pmu.productions.new
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

  # GET /productions/1
  # GET /productions/1.json
  def show

	  	@pmu=Pmu.find(params[:pmu_id])
	  	@production=@pmu.(includes:productions).productions.find(params[:id])
			@registration=@pmu.registration
			@fertilizations=@production.fertilizations
			@irrigations=@production.irrigations
  end

  # PATCH/PUT /productions/1
  # PATCH/PUT /productions/1.json
  def update

    respond_to do |format|
	    @production=Production.find(params[:id])
	    @pmu=@production.pmu
      if @production.update(production_params)
        format.html { redirect_to pmu_production_path(@pmu,@production), notice: 'Production was successfully updated.' }
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
		@production=Production.find(params[:id])
		@pmu=@production.pmu
    @production.destroy
		@registration=@pmu.registration
    respond_to do |format|
      format.html { redirect_to team_registration_pmu_path(@registration,@pmu), notice: 'Production was successfully destroyed.' }
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
      params.require(:production).permit(:pmu_id, :produce_id,:mcrop_id, :variety, :plantation_year, :number_of_trees, :expected_quantitiy, :ehd,standard_ids:[])
    end
end
