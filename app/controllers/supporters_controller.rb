class SupportersController < ApplicationController

  def create
    @supporter = Supporter.new(supporter_params)

    if @supporter.save
      flash[:notice] = "ok!"
      redirect_to projects_path
    else
      render :create
    end
  end

  private

    def supporter_params
      params.require(:supporter).permit(:donated_amount, :project_id).merge(user: current_user)
    end
end
