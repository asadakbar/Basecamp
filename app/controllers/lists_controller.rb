class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @project = current_user.projects.find(params[:project_id])
    @list = @project.lists.new
    #@projects = current_user.projects
  end

  def create
    @list = List.create(params[:list])
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end
end
