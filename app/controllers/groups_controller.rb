class GroupsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
    @groups = User.find(params[:user_id]).groups
    render json: @groups
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    @group_name = JSON.parse(params.keys[0])["groupName"]
    @group = Group.create(name: @group_name)
    @group.creator = @user
    @group.members << @user

    if @group.save
      render json: @group
    else
      # render json: @group.errors, status 412
    end
  end

  def show
    @group = Group.find(params[:id])
    render json: @group
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
