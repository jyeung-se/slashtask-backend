class Api::V1::TaskListsController < ApplicationController
  before_action :set_task_list, only: [:show,:update,:destroy]

  def index
    @task_lists = TaskList.all
    render json: @task_lists, status: 200
  end

  def create
    @task_list = TaskList.create(task_list_params)
    render json: @task_list, status: 201
    # if @task_list.valid?
    #   render json: @task_list, status: 201
    # else
    #   if params[:task_list][:list_title] == ''
    #     render json: { errors: 'Tasklist title field must not be blank' }, status: :not_acceptable
    #   end
    # end
  end

  def update
    @task_list.update(task_list_params)
    render json: @task_list, status: 200
  end

  def destroy
    tasklistId = @task_list.id
    @task_list.destroy
    render json: {message:"The Tasklist has been deleted.", tasklistId:tasklistId}
  end

  def show
    render json: @task_list, status: 200
  end

  private
  def task_list_params
    params.require(:task_list).permit(:list_title, :user_id)
  end

  def set_task_list
    @task_list = TaskList.find(params[:id])
  end

end
