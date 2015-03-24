class ChemsController < ApplicationController
  before_action :set_chem, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @chems = Chem.all
    respond_with(@chems)
  end

  def show
    respond_with(@chem)
  end

  def new
    @chem = Chem.new
    respond_with(@chem)
  end

  def edit
  end

  def create
    @chem = Chem.new(chem_params)
    @chem.save
    respond_with(@chem)
  end

  def update
    @chem.update(chem_params)
    respond_with(@chem)
  end

  def destroy
    @chem.destroy
    respond_with(@chem)
  end

  private
    def set_chem
      @chem = Chem.find(params[:id])
    end

    def chem_params
      params.require(:chem).permit(:mfc, :quantity, :unit)
    end
end
