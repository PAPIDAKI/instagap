class IrrigationsController < ApplicationController
  before_action :set_irrigation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @irrigations = Irrigation.all
    respond_with(@irrigations)
  end

  def show
    respond_with(@irrigation)
  end

  def new

		@production=Production.find(params[:production_id])
    @irrigation =@production.irrigations.new
    respond_with(@irrigation)

  end

  def edit
  end

  def create
	  @production=Production.find(params[:production_id])
	  @irrigation =@production.irrigations.create(irrigation_params)
	  @pmu=@production.pmu

    if @irrigation.save
			redirect_to pmu_production_path(@pmu,@production)
    else
			render :new
    end
  end

  def update
    @irrigation.update(irrigation_params)
    respond_with(@irrigation)
  end

  def destroy
    @irrigation.destroy
    respond_with(@irrigation)
  end

  private
    def set_irrigation
      @irrigation = Irrigation.find(params[:id])
    end

    def irrigation_params
      params.require(:irrigation).permit(:date, :duration, :qunatity, :operator,:persons, :note)
    end
end
