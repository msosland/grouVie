class ParticipationsController < ApplicationController

  def index
  end

  def new
  end

  def create
    user_id = JSON.parse(params.keys[0])["userId"].to_i
    @participation = Participation.new(user_id: user_id, challenge_id: params[:challenge_id])

    if @participation.save
      render json: @participation
    else
      render json: @participation.errors, status: 412
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