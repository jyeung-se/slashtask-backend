class Api::V1::TasksController < ApplicationController
  before_action :set_task, only: [:show,:update,:destroy]

  def index
    @tasks = Task.all.order(:id)
    # .order(:id) to sort by ascending ID order.
    render json: @tasks, status: 200
  end

  def create
    @task = Task.create(task_params)
    render json: @task, status: 201
  end

  def update
    @task.update(task_params)
    render json: @task, status: 200
  end

  def destroy
    taskId = @task.id
    @task.destroy
    render json: {message:"Slash! Task complete!", taskId:taskId}
  end

  def show
    render json: @task, status: 200
  end

  private
  def task_params
    params.require(:task).permit(:title, :description, :slashed, :likes, :task_list_id)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end
