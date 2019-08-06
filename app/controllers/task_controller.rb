class TaskController < ApplicationController
  def list
    @tasks = Task.all
  end

  def find_task
    @task = Task.find(params[:id])
  end

  def form
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def delete
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to list_path
  end
end
