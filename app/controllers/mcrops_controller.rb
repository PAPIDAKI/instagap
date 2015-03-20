class McropsController < ApplicationController
  before_action :set_mcrop, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mcrops = Mcrop.all
    respond_with(@mcrops)
  end

  def import
		Mcrop.import(params[:file])
		redirect_to mcrops_url,notice:"Crops successfuly added !"
  end

  def show
		@mcrop=Mcrop.find(params[:code_fyta])
		@mepembashes=@mcrop.mepembashes
		@fcs=FarmakoCropSkeyasmatum.all

  end

  def new
    @mcrop = Mcrop.new
    respond_with(@mcrop)
  end

  def edit
  end

  def create
    @mcrop = Mcrop.new(mcrop_params)
    @mcrop.save
    respond_with(@mcrop)
  end

  def update
    @mcrop.update(mcrop_params)
    respond_with(@mcrop)
  end

  def destroy
    @mcrop.destroy
    respond_with(@mcrop)
  end

  private
    def set_mcrop
      @mcrop = Mcrop.find(params[:code_fyta])
    end

    def mcrop_params
      params.require(:mcrop).permit(:code_fyta, :kathh, :eidos, :gonoma, :genenral, :code, :klartex)
    end
end
