class FertilizationsController < ApplicationController
  before_action :set_fertilization, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @fertilizations = Fertilization.all
    respond_with(@fertilizations)
  end

  def show
    respond_with(@fertilization)
  end

  def new
    @fertilization = Fertilization.new
    respond_with(@fertilization)
  end

  def edit
  end

  def create
    @fertilization = Fertilization.new(fertilization_params)
    @fertilization.save
    respond_with(@fertilization)
  end

  def update
    @fertilization.update(fertilization_params)
    respond_with(@fertilization)
  end

  def destroy
    @fertilization.destroy
    respond_with(@fertilization)
  end

  private
    def set_fertilization
      @fertilization = Fertilization.find(params[:id])
    end

    def fertilization_params
      params.require(:fertilization).permit(:date, :name, :type, :concentration, :amount, :application_method, :machinery, :approved_by, :operator, :note)
    end
end
