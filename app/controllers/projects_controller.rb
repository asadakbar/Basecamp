class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def index
     @user = current_user
    @projects = Project.all
  end

  def create
    @project = Project.new(params[:project])
    @project.user = current_user
    @project.save
  end

  def update
  end

  def destroy
  end

  def update
  end

  def edit
  end
end
