class SessionsController < ApplicationController
  def new
    #render form to enter username and password
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      render json: @user
      #on frontend, render user profile page using user.id
    else
      render json: @user.errors, status: 412
  end

  def logout
    session.delete(:user_id)
    #render login page
  end
end