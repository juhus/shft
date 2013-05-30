class ProjectsController < ApplicationController
  before_filter :find_project, only: [:show,:edit,:update,:destroy]
  before_filter :authenticate_user!, except: [:show,:index]

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
  end
  def edit
	  @projects=Project.all
  end
  def update
    @project.update_attributes(params[:project])
    redirect_to @project
  end
  def destroy
    @project.destroy
    redirect_to root_path
  end
  private
    def find_project
      @project =Project.find_by_slug!(params[:id])
    end
end
