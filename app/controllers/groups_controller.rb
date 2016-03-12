class GroupsController < ApplicationController
  def index
    @groups = User.find(params[:user_id]).groups
    render json: @groups
  end

  def new
  end

  def create
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
