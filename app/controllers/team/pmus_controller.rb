class Team::PmusController < ApplicationController
	before_action :set_pmu, only: [:show, :edit, :update, :destroy]

	# GET registrations/1/pmus
	# GET /pmus.json
	def index
		@registration=Registration.find(params[:registration_id])
		@pmus = @registration.pmus
	end

	# GET registrations/1/pmus/1
	# GET /pmus/1.json
	def show
		#if params[:registration_id]
		#@registration=Registration.find(params[:registration_id])
		#@pmu=@registration.pmus.find(params[:id])
		#@group=@registration.group
		#else
		@pmu=Pmu.find(params[:id])
		@registration=@pmu.registration
		@group=@registration.group
		@productions=@pmu.productions

		#end

	end

	# GET /pmus/new
	def new
		if params[:registration_id]
			@registration=Registration.find(params[:registration_id])
			@pmu = @registration.pmus.new
		else
			@registration=Registration.find(params[:id])
		end
	end

	# GET /pmus/1/edit
	def edit

		if  params[:registration_id]
			@registration=Registration.find(params[:registration_id])
			@pmu=@registration.pmus.find(params[:id])
		else
			@pmu=Pmu.find(params[:id])
		end
	end

	# POST /pmus
	# POST /pmus.json
	def create

		@registration=Registration.find(params[:registration_id])
		@pmu = @registration.pmus.create(pmu_params)
		if @pmu.save
			redirect_to team_registration_path(@registration)

		else
			render :new
		end
	end


	def update

		if params[:registration_id]
			@registration=Registration.find(params[:registration_id])
			@pmu=@registration.pmus.find(params[:id])
		else
			@pmu=Pmu.find(params[:id])
		end

		#@registration=Registration.find(params[:registration_id])
		#@pmu=@registration.pmus.create(pmu_params)

		respond_to do |format|
			if @pmu.update(pmu_params)
				format.html { redirect_to team_registration_pmu_path(@registration,@pmu), notice: 'Pmu was successfully updated.' }
				format.json { render :show, status: :ok, location: @pmu }
			else
				format.html { render :edit }
				format.json { render json: @pmu.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE registrations/1/pmus/1
	# DELETE /pmus/1.json
	def destroy
		if params[:registration]
			@registration=Registration.find(params[:registration_id])
			@pmu=@registration.pmus.find(params[:id])
			@group=@registration.group
		else
			@pmu=Pmu.find(params[:id])
			@registration=@pmu.registration
		end
		@pmu.destroy
		respond_to do |format|
			format.html { redirect_to team_registration_path(@registration), notice: 'Pmu was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_pmu
		#@registration=Registration.find(params[:registration_id])
		#@pmu=@registration.pmus.find(params[:id])

	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def pmu_params
		params.require(:pmu).permit(:address, :location, :grower_id, :facilities)
	end
end


