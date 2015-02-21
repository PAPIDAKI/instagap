class MembershipsController < ApplicationController
	before_action :load_group
	def new

	end

	def create

	end

	def index
		@memberships=@group.memberships
	end

	private
	def load_group
		@group=Group.find(params[:id])
	end
end
