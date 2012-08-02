class ListsController < ApplicationController
  def index
    @project = current_user.projects.find(params[:project_id])
    @lists = @project.lists.all
  end

  def new
    @project = current_user.projects.find(params[:project_id])
    @list = @project.lists.new
    #@projects = current_user.projects
  end

  def create
    @project = current_user.projects.find(params[:project_id])
    @list = @project.lists.create(params[:list])
    redirect_to project_lists_path(@project)
  end

  def update
  end

  def edit
    @project = current_user.projects.find(params[:project_id])
    @list = @project.lists.find(params[:id])
  end

  def destroy
    @project = current_user.projects.find(params[:project_id])
    @list = @project.lists.delete(params[:id])
  end

  def show
  end
end
