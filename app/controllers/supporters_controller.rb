class SupportersController < ApplicationController

  def create
    @supporter = Supporter.new(supporter_params)

    if @supporter.save
      flash[:notice] = "ok!"
      redirect_to pages_path
    else
      flash[:notice] = "ok!"
    end
  end

  private

    def supporter_params
      params.require(:supporter).permit(:donated_amount, :project_id).merge(user: current_user)
    end
end
