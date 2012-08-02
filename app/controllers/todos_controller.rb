class TodosController < ApplicationController
  def index
    @project = current_user.projects.find(params[:project_id])
    @list = @project.lists.find(params[:list_id])
    @todos = @list.todos.all
    @todo = @list.todos.new
  end

  def new
    @project = current_user.projects.find(params[:project_id])
    @list = @project.lists.find(params[:list_id])
    @todo = @list.todos.new
  end

  def edit
    @project = current_user.projects.find(params[:project_id])
    @list = @project.lists.find(params[:list_id])
    @todo = @list.todos.find(params[:id])
  end

  def update
  end

  def show
  end

  def create
    @project = current_user.projects.find(params[:project_id])
    @list = @project.lists.find(params[:list_id])
    @todo = @list.todos.new(params[:todo])
    @todo.save
    redirect_to project_list_todos_path(@project)
  end

  def destroy
    @project = current_user.projects.find(params[:project_id])
    @list = @project.lists.find(params[:list_id])
    @todo = @list.todos.delete(param[:id])
  end
end
