class SupportersController < ApplicationController

  def supporter_project
    @supporter = Supporter.new(suppoter_params)

    if @supporter.save
      flash[:notice] = "ok!"
      redirect_to projects_path
    else
      render :create
    end
  end

  private

    def suppoter_params
      params.require(:supporter).permit(:value, :project_id).merge(user: current_user)
    end
end
