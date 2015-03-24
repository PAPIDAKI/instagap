class FertilizersController < ApplicationController
  before_action :set_fertilizer, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fertilizers = Fertilizer.all
    respond_with(@fertilizers)
  end

  def show
    respond_with(@fertilizer)
  end

  def new
    @fertilizer = Fertilizer.new
    respond_with(@fertilizer)
  end

  def edit
  end

  def create
    @fertilizer = Fertilizer.new(fertilizer_params)
    @fertilizer.save
    respond_with(@fertilizer)
  end

  def update
    @fertilizer.update(fertilizer_params)
    respond_with(@fertilizer)
  end

  def destroy
    @fertilizer.destroy
    respond_with(@fertilizer)
  end

  private
    def set_fertilizer
      @fertilizer = Fertilizer.find(params[:id])
    end

    def fertilizer_params
      params.require(:fertilizer).permit(:brand, :type, :content, :quantiy, :unit)
    end
end
