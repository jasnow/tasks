class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all
  end

  def create
    # render :text => params.inspect
    Task.create task_params
    redirect_to(request.referer)
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    task = Task.find params[:id]
    if task.update(task_params)
      redirect_to tasks_path, notice: "Your tasks successfully been updated"
    else
      redirect_to(request.referer,
        notice: "There was an error updating your task.")
    end
  end

  def destroy
    Task.destroy params[:id]
    redirect_to(request.referer, notice: "Task has been deleted")
  end

  private

  def task_params
    params.require(:task).permit(:task)
  end
end
