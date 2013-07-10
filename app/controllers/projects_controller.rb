class ProjectsController < ApplicationController
  
  def show
    @project = Project.find(params[:id])
    render 'projects/index'
  end

  def new
    @project = Project.new
    @genre = Genre.new
    render 'projects/new'
  end

  def create
    p current_user.id
    p params[:project]
    @project = Project.create(params[:project])
    @genre = Genre.find_or_create_by_name(params[:genre])
    @project.genres << @genre
    current_user.projects << @project
    redirect_to user_path(current_user)
  end
  
end