class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def new
    #new user form
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors, status: 412
    end
  end

  def show #/users/:id
    @user = User.find(params[:id])
    render json: @user
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:image, :username, :email, :password)
  end
end