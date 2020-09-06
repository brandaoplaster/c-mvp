class SearchController < ApplicationController

  def index
    @projects = Project.where("title LIKE ?", "%" + search_params[:title] + "%")
  end

  private

    def search_params
      params.permit(:title)
    end
end
