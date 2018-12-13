class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # skip_before_action :authorized, only: [:create]
  skip_before_action :authorized, only: [:index, :create]

  def index
    @users = User.all
    # render json: @users, status: 200
    render json: @users.to_json( { include: [ task_lists: { include: :tasks } ] } )
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
    # render json: @user, status: 201
  end

  def update
    @user.update(user_params)
    render json: @user, status: 200
  end

  def destroy
    userId = @user.id
    @user.destroy
    render json: {message:"Bam! User deleted!", userId:userId}
  end

  def show
    render json: @user, status: 200
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :city, :state)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
