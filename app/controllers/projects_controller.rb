class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def index
    @user = current_user
    @projects = Project.find_all_by_status("Public")
    @priv_projects =Project.find_all_by_user_id(current_user.id)
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
