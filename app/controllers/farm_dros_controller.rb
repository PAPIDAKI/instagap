class FarmDrosController < ApplicationController
  before_action :set_farm_dro, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @farm_dros = FarmDro.all
    respond_with(@farm_dros)
  end

  def import
		FarmDro.import(params[:file])
		redirect_to farm_dros_url,notice:"farm_dros imported successfully! "
  end

  def show
    respond_with(@farm_dro)
  end

  def new
    @farm_dro = FarmDro.new
    respond_with(@farm_dro)
  end

  def edit
  end

  def create
    @farm_dro = FarmDro.new(farm_dro_params)
    @farm_dro.save
    respond_with(@farm_dro)
  end

  def update
    @farm_dro.update(farm_dro_params)
    respond_with(@farm_dro)
  end

  def destroy
    @farm_dro.destroy
    respond_with(@farm_dro)
  end

  private
    def set_farm_dro
      @farm_dro = FarmDro.find(params[:id])
    end

    def farm_dro_params
      params.require(:farm_dro).permit(:kod_farmak_id, :kodikos_id, :kod_morfh, :synthesh, :katharotht, :kodikos_kath, :delrec, :fprint)
    end
end
