class ProjectsController < ApplicationController
	before_action :set_project, only: [:show, :edit, :update, :destroy]

	def index
		@projects = Project.all
	end

	def show
		
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)
		if @project.save
			flash[:notice] = "Eintrag erfolgreich erstellt :)"
			redirect_to projects_url
		else
			flash[:alert] = "Leider ist etwas schief gegangen :("
			render :new
		end
	end

	def edit
	end

	def update
		if @project.update(project_params)	
			flash[:notice] = "Update erfolgreich :)"	
			redirect_to projects_url
		else
			flash[:alert] = "Leider ist etwas schief gegangen :("
			render :edit
		end
	end

	def destroy
		@project.destroy
		redirect_to projects_url
	end

	private
		def project_params
			params.require(:project).permit(:title, :description, :start_date)
		end

		def set_project
			@project = Project.find(params[:id])
		end
	
end
