class ProjectsController < ApplicationController
  
  def show
    @project = Project.find(params[:id])
    render 'projects/index'
  end

  def new
    @project = Project.new
    render 'projects/new'
  end

  def create
    p params[:project]
    @project =Project.create(params[:project])
    redirect_to user_path(current_user)
  end
end