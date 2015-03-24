class WatersController < ApplicationController
  before_action :set_water, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @waters = Water.all
    respond_with(@waters)
  end

  def show
    respond_with(@water)
  end

  def new
    @water = Water.new
    respond_with(@water)
  end

  def edit
  end

  def create
    @water = Water.new(water_params)
    @water.save
    respond_with(@water)
  end

  def update
    @water.update(water_params)
    respond_with(@water)
  end

  def destroy
    @water.destroy
    respond_with(@water)
  end

  private
    def set_water
      @water = Water.find(params[:id])
    end

    def water_params
      params.require(:water).permit(:quantity, :unit)
    end
end
