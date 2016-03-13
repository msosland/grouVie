class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token
   skip_before_action :verify_authenticity_token
  def new
    #render form to enter username and password
  end

  def create
    p "********************************************************"
    # my_hash = JSON.parse(params)
    puts params["email"]
    p "********************************************************"

    @user = User.find_by(email: params["email"])
    if @user && @user.authenticate(params['password'])
      p "USER LOGGED IN!"
      p @user
      p @user.to_json
      log_in @user
      render json: @user
      #on frontend, render user profile page using user.id
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
