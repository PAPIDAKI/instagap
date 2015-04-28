class McropsController < ApplicationController
  before_action :set_mcrop, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def list

  end

  def index
		@mcrops=Mcrop.all

		#case params[:scope]
		#	when 'produce_10'
		#		@mcrops=Mcrop.produce_20
		#	else
		#		@mcrops=Mcrop.produce_10
		#end
  end

  def import
		Mcrop.import(params[:file])
		redirect_to mcrops_url,notice:"Crops successfuly added !"
  end

  def show
		@mcrop=Mcrop.includes(:mfarmakos,:mfcs).find(params[:code_fyta])
		# @mfcs=@mcrop.demo
    @mfarmakos=@mcrop.mfarmakos


		respond_to do |format|
			format.html
			format.pdf do
				pdf=Prawn::Document.new
				pdf.text "All chems from prawn"

				pdf=ChemsPdf.new(@mcrop,@mepembashes,@mfcs,@farmako)

				send_data pdf.render,filename: "igap List for #{@mcrop.gonoma}" ,
					type: "application/pdf",
					disposition:"inline"
        
      end
			
		end

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

