class McropsController < ApplicationController
  before_action :set_mcrop, only: [:show, :edit, :update, :destroy]
    before_filter :authenticate_user!


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
    # TODO:add queries to fill up farmakos table 
		@mcrop=Mcrop.find(params[:code_fyta])
    @mfarmakos=@mcrop.mfarmakos.includes(:systatiks)
    where()

        # farmako.mfarmkasts.where(mcrop_id:params[:code_fyta]).last.try(:entypo).try(:mastfarms)

    # @mfarmkasts=@mfarmakos.each {|f| f.mfarmkasts}
    # @entypo=@mfarmkasts.each {|mf| mf.entypo}
     # @mastfarms=Mastfarms.all

    # @mfarmkasts=Mfarmkast.mfarmako
    # @mfarmakos.each {|mf| mf.mfarmkasts.where(mcrop_id:params[:code_fyta])}
    # @entypos=@mfarmkasts.each{|mf| mf.entypo}
    # @entypo=@mfarmkast.entypo
    # @mastfarms=@entypo.mastfarms
     # @entypos = Entypo.includes(:mastfarms).all
    # @mastfarms=Mastfarm.includes(:masthenium).all


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

