class FertilizationsController < ApplicationController
  before_action :set_fertilization, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
		@production=Production.find(params[:production_id])
    @fertilizations =@production.fertilizations.all
    respond_with(@fertilizations)
  end

  def show
		@production=Production.find(params[:production_id])
		@fertilization=Fertilization.find(params[:id])
		@pmu=@production.pmu
    respond_with(@fertilization)
  end

  def new
		@production=Production.find(params[:production_id])
    @fertilization = @production.fertilizations.new
  end

  def edit
	  @production=Production.find(params[:production_id])
	  @fertilization = Fertilization.find(params[:id])

  end

  def create

	  @production=Production.find(params[:production_id])
	  @fertilization = @production.fertilizations.new(fertilization_params)
	  @pmu=@production.pmu
    if @fertilization.save
			redirect_to pmu_production_path(@pmu,@production)
    else
			render :new
    end
  end

  def update
	  @production=Production.find(params[:production_id])
	  @fertilization =Fertilization.find(params[:id])
	  @fertilization.update(fertilization_params)
	  @pmu=@production.pmu
	  if @fertilization.save
		  redirect_to pmu_production_path(@pmu,@production)
	  else
		  render :edit
	  end

  end

  def destroy
	  @production=Production.find(params[:production_id])
	  @fertilization = Fertilization.find(params[:id])
	  @fertilization.destroy
    respond_with(@fertilization)
  end

  private
    def set_fertilization
      @fertilization = Fertilization.find(params[:id])
    end

    def fertilization_params
      params.require(:fertilization).permit(:date, :name, :typos, :concentration, :amount, :application_method, :machinery, :approved_by, :operator, :note,:production_id)
    end
end
