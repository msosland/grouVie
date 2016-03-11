class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to '/'
     else
      puts
       redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:image, :username, :email, :password)
  end
end