class ProjectsController < ApplicationController
  
  def show
    @project = Project.find(params[:id])
    render 'projects/index'
  end

end