class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  def render_404
    redirect_to projects_path
  end
end
