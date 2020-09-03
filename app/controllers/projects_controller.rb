class ProjectsController < ApplicationController
  before_action :set_projetc, only: [:show]

  def index
    @projects = current_user.projects
  end

  def show

  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:notice] = "Contact succesfully created"
      redirect_to projects_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :target_value, :end_date, :image_project).merge(user: current_user)
  end

  def set_projetc
    @project = Project.find(params[:id])
  end
end
