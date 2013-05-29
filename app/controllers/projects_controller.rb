class ProjectsController < ApplicationController
  def index
  	@projects=Project.all
  end
  def create
  	@project=Project.create(params[:project])
  	redirect_to @project
  end
  def new
  	@project = Project.new
  end
  def show
  	@projects=Project.all
  	@project = Project.find(params[:id])
  end
  def edit
	  @projects=Project.all
  	@project = Project.find(params[:id])
  end
  def update
    @project=Project.find(params[:id])
    @project.update_attributes(params[:project])
    redirect_to @project
  end
  def destroy
    @project=Project.find(params[:id])
    @project.destroy
    redirect_to root_path
  end
end
