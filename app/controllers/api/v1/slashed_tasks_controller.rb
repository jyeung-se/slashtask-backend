class Api::V1::SlashedTasksController < ApplicationController
  before_action :set_slashed_task, only: [:show,:update,:destroy]

  def index
    slashed_tasks = SlashedTask.all
    render json: slashed_tasks, status: 200
  end

  def create
    slashed_task = SlashedTask.create(slashed_task_params)
    render json: slashed_task, status: 201
  end

  def update
    @slashed_task.update(slashed_task_params)
    render json: @slashed_task, status: 200
  end

  def destroy
    slashedTaskId = @slashed_task.id
    @slashed_task.destroy
    render json: {message:"Slash! SlashedTask complete!", slashedTaskId:slashedTaskId}
  end

  def show
    render json: @slashed_task, status: 200
  end

  private
  def slashed_task_params
    params.permit(:description, :title, :user_id)
  end

  def set_slashed_task
    @slashed_task = SlashedTask.find(params[:id])
  end

end
