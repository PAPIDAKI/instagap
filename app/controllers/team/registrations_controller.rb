class Team::RegistrationsController < ApplicationController

	def index
		@group=Group.find(params[:group_id])
		@registrations=@group.registrations
	end

	def new
		@group=Group.find(params[:group_id])
		@registration=@group.registrations.new
	end

	def create
		@group=Group.find(params[:group_id])
		@registration=@group.registrations.new(registration_params)
		if @registration.save
			redirect_to group_team_registration_path(@group,@registration),notice:"Registered successfully!"
		else
			render :new
		end
	end

	def edit
			@group=Group.find(params[:group_id])
			@registration=@group.registrations.find(params[:id])
	end

	def update
		@group=Group.find(params[:group_id])
		@registration=@group.registrations.find(params[:id])

		respond_to do |format|
			if @registration.update(registration_params)
				format.html { redirect_to group_team_registration_path(@group,@registration), notice: 'Group registration updated!.' }
				format.json { render :show, status: :ok, location: @production }
			else
				format.html { render :edit }
				format.json { render json: @production.errors, status: :unprocessable_entity }
			end
		end

	end

	def destroy
		@group=Group.find(params[:group_id])
		@registration=@group.registrations.find(params[:id])
		@registration.destroy
			respond_to do |format|
				format.html { redirect_to group_path(@group), notice: 'Registartion was successfully deleted!' }
				format.json { head :no_content }
			end
	end

	def show
		if params[:group_id]
		@group=Group.find(params[:group_id])
		@registration=@group.registrations.find(params[:id])
		@pmus=@registration.pmus
		@productions=@registration.productions

		else
			@registration=Registration.find(params[:registration_id])
			@group=@registration.group
			@pmus=@registration.pmus

		end

	end


	private

	def registration_params
		params.require(:registration).permit(:name,:email,:role)
	end


	end
