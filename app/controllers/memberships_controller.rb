class MembershipsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
  end

  def new
  end

  def create
    group_id = JSON.parse(params.keys[0])["groupId"].to_i
    username = JSON.parse(params.keys[0])["username"]
    @user = User.find_by(username: username)
    Group.find(group_id).members << @user

    render json: @user
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