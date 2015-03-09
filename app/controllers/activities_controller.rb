class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  respond_to :html

  before_action :set_type

  def index
		@activities=type_class.all
  end

  def show

  end

  def new
		@activity=type_class.new
  end

  def create

	  @activity=type_class.new(activity_params)


		if @activity.save
		  redirect_to activities_path,notice:"#{type} was succesfully created."
	  else
		  render :new
	  end

  end


  def edit
  end



  def update
    @activity.update(edit_activity_params)
		redirect_to activities_path
  end

  def destroy
    @activity.destroy
		redirect_to activities_path
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
			params.require(type.underscore.to_sym).permit(:date, :type, :note, :operator, :persons, :approved_by,:production_id)
    end

    def edit_activity_params
	  type=@activity.type
	  params.require(type.underscore.to_sym).permit(:date,:type,:note,:operator,:persons,:approved_by,:production_id)

    end
end
