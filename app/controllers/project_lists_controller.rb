class ProjectListsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

	def new
		@project_list = ProjectList.new
	end

	def index
		@project_lists = ProjectList.all
	end

	def create
		@project_list = ProjectList.new(project_list_params)
		respond_to do |format|
			if @project_list.save
				redirect_to @project_list
			else
				format.html { render 'new'}
		        format.json { render json: @project_list.errors, status: :unprocessable_entity }

			end
		end
	end

	def show
		
	end

	def edit
		
	end

	def update
		
		if @project_list.update(project_list_params)
			redirect_to @project_list
		end
	end
	def destroy
		@project_list.destroy
		redirect_to project_lists_url
	end
	private
		def set_project
			@project_list = ProjectList.find(params[:id])
		end
		def project_list_params
			params.require(:project_list).permit(:title, :startdate, :enddate, :duration, :description, :roles)
		end
end
