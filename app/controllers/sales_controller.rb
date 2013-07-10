class SalesController < ApplicationController
  
  def show
    @sale = Sale.find(params[:id])
    render 'sales/index'
  end

  def new
    @sale = Sale.new
    @territories = Territory.new
    render 'sales/new'
  end

  def create
    
    @sale = Sale.create(params[:project])
    @territories = Territory.find_or_create_by_name(params[:territories])
    @territories.each do |t|
      @sale.territories << t
    end
    @project.genres << @genre
    current_user.projects << @project
    redirect_to user_path(current_user)
  end

end