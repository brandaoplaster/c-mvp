class ProjectsController < ApplicationController
  before_action :set_projetc, only: [:show, :destroy, :edit, :update]

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
      flash[:notice] = "Projeto criado com sucesso!"
      redirect_to projects_path
    else
      render :new
    end
  end

  def update
    if @project.update(project_params)
      flash[:notice] = "Projeto atualizado com sucesso!"
      redirect_to projects_path
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :target_value, :end_date, :image_project).merge(user: current_user)
  end

  def set_projetc
    @project = current_user.projects.find(params[:id])
  end
end
