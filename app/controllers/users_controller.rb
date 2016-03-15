  class UsersController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
    @user = User.new
  end

  def new
    #new user form
  end

  def create
    @user = User.new(username: params["username"], email: params["email"], password: params['password'])
    if @user.save
      render json: @user
    else
      # puts @user.errors.full_messages.to_json
      render json: @user.errors.full_messages, status: 412
    end
  end

  def show #/users/:id
    @user = User.find(params[:id])
    render json: @user
  end

  def edit
  end

  def update
    image = JSON.parse(params.keys[0])["obj"].gsub(/\n/, '').gsub(' ', '+')
    image_data = Paperclip.io_adapters.for(image)
    @user = User.find(params["id"].to_i)
    @user.update(image: image_data)
    render json: @user
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:image, :username, :email, :password)
  end
end
