class TasksController < ApplicationController

  before_action :set_task, only:[:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end
  
  def create
    new_task = Task.new(task_params)
    new_task.save
    redirect_to task_path(new_task.id)
  end

  def edit
    # set_task private method is here
  end

  def update
    # update infos set on update
      @task.update(task_params)
    redirect_to task_path(@task.id)
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end
  
  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
