class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token
   skip_before_action :verify_authenticity_token
  def new
    #render form to enter username and password
  end

  def create
    @user = User.find_by(username: params["username"])
    if @user && @user.authenticate(params['password'])
      log_in @user
      render json: @user
    else
      # TODO: something should happen if user login fails
      # render status: 412
    end
  end

  def logout
    session.delete(:user_id)
    #render login page
  end
end
