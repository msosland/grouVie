class MembershipsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
  end

  def new
  end

  def create
    group_id = JSON.parse(params["groupId"])
    username = JSON.parse(params["username"])
    @user = User.find_by(username: username)
    if @membership.save
      render json: @user
    else
      #
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end