class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  skip_before_action :verify_authenticity_token

  def create
    @user = User.find_by(username: params["username"])
    if @user && @user.authenticate(params['password'])
      log_in @user
      render json: @user
    end
  end

  def logout
    session.delete(:user_id)
  end
end
