class GroupsController < ApplicationController
  def index
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