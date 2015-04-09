class Team::ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  respond_to :html
  before_action :set_type

  before_action :load_registration

  def index
		@activities=type_class.all
  end

  def show
		@registration=Registration.find(params[:registration_id])
		@group=@registration.group
  end

  def new
		@activity=type_class.new
		@registration=Registration.find(params[:registration_id])
		@group=@registration.group
		#@activity.chems.new

  end

  def create

	  @registration=Registration.find(params[:registration_id])
	  @activity=type_class.new(activity_params)
	  @activity.registration_id=@registration.id
	 # @activity.chem




	  if @activity.save
			@group=@registration.group
		  redirect_to group_team_registration_path(@group,@registration),notice:"#{type} was succesfully created."
	  else
		  render :new
	  end

  end

  def edit
		@activity=Activity.find(params[:id])
		@registration=Registration.find(params[:registration_id])
		@group=@registration.group
		@activity.chems.build
		#group_id
		#registration.id

  end



  def update
		@activity=Activity.find(params[:id])
		@registration=Registration.find(params[:registration_id])
		@group=@registration.group

		@activity.update(edit_activity_params)

		redirect_to group_team_registration_path(@group,@registration)
  end

  def destroy
	  @registration=Registration.find(params[:registration_id])
	  @group=@registration.group

    @activity.destroy
		redirect_to group_team_registration_path(@group,@registration)
  end

  private

    def set_type
			@type=type
    end

    def type
			Activity.types.include?(params[:type])? params[:type] : "Activity"
    end
    def type_class
			type.constantize
    end


    def set_registration
			@registration=Registration.find(params[:registration_id])
    end

    def set_activity
			@activity=Activity.find(params[:id])
    end

    def activity_params
			params.require(type.underscore.to_sym).permit(:date,
														 :type,
														 :note,
														 :operator, 
														 :persons,
														 :approved_by,
														 production_ids: [],
														 :chems_attributes => [:id,:name],
														 :quants_attribures=>[:id,:amount,:unit])
    end

    def edit_activity_params
	  type=@activity.type
	  params.require(type.underscore.to_sym).permit(:date,
												  	:type,
												  	:note,
												  	:operator,
												  	:persons,
												  	:approved_by,
												  	:registration_id,
												  	production_ids: [],
												  	:chems_attributes => [:id,:name],
												    :quants_attribures=>[:id,:amount,:unit])
    end

		def load_registration
			@registration=Registration.find(params[:registration_id])
		end
end
