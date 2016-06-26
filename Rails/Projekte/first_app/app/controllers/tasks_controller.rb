class TasksController < ApplicationController
  before_action :set_project


  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = @project.tasks
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  def new
    @task = @project.tasks.new
  end

  # GET /tasks/1/edit
  def create
    @task = @project.tasks.new(task_params)
    if @task.save
      flash[:notice] = "Erfolgreich gespeichert :)"
      redirect_to project_tasks_path(@project.id)
    else
      flash[:alert] = "Leider ist ein Fehler aufgetreten :("
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params) 
      flash[:notice] = "Update erfolgreich :)"  
      redirect_to project_task_path(@project.id, @task.id)
    else
      flash[:alert] = "Leider ist etwas schief gegangen :("
      render :edit
    end
    
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
    def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to project_tasks_url(@project.id), notice: "task von #{@task.title} erfolgreich gelöscht"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:project_id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:title, :description, :start_date, :end_date, :project_id)
    end
end
