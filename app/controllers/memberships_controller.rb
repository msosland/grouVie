class MembershipsController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def index
  end

  def new
  end

  def create
    puts params
    # Parameters: {"{\"username\":\"paul\",\"groupId\":4}"=>nil}
    group_id = JSON.parse(params.keys[0]["groupId"])
    username = JSON.parse(params.keys[0]["username"])
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