class ProjectsController < ApplicationController
  before_action :set_projetc, only: [:show]

  def index
    @projects = current_user.projects
  end

  def show

  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_projetc
    @project = Project.find(params[:id])
  end
end
