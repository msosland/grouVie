class ChallengesController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
    @challenge = Challenge.find(params[:id])
    render json: @challenge
  end

  def edit
  end

  def update
  end

  def destroy
  end
end