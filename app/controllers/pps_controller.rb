class PpsController < ApplicationController
  before_action :set_pp, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pps = Pp.all
    respond_with(@pps)
  end

  def show
		@production=Production.find(params[:id])
		@pp=@production.pp
  end

  def new
		@production=Production.find(params[:production_id])
    @pp = @production.pps.new
		@pmu=@production.pmu
    respond_with(@pp)
  end

  def edit
	  @production=Production.find(params[:production_id])
	  @pmu=@production.pmu


  end

  def create
	  @production=Production.find(params[:production_id])
	  @pp = @production.pps.new
	  @pmu=@production.pmu

	  if @pp.save
			redirect_to pmu_production_path(@pmu,@production)
	  else
			render :new
	  end
  end

  def update
    @pp.update(pp_params)
    respond_with(@pp)
  end

  def destroy
    @pp.destroy
    respond_with(@pp)
  end

  private
    def set_pp
      @pp = Pp.find(params[:id])
    end

    def pp_params
      params.require(:pp).permit(:date, :trade_name, :active_ingridient, :reason, :amount, :application_method, :tech_responsible, :operator, :persons, :note, :production_id)
    end
end
