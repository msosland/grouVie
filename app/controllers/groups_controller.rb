class GroupsController < ApplicationController
  def index
    @groups = User.find(params[:user_id]).groups
    render json: @groups
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    @group_name = JSON.parse(params["groupName"])
    @group = Group.create(name: @group_name)

    @members = JSON.parse(params["groupMembers"])
    @members.each {|member| @group.members << member}

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
