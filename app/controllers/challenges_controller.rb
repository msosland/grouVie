class ChallengesController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
  end

  def new
  end

  def create
    challenge_name = JSON.parse(params.keys[0])["challengeName"]
    challenge_description = JSON.parse(params.keys[0])["challengeDescription"]
    user_id = JSON.parse(params.keys[0])["userId"].to_i
    @user = User.find_by(id: user_id)

    @challenge = Challenge.new(name: challenge_name, description: challenge_description, group_id: params["group_id"].to_i)
    if @challenge.save
      @challenge.participants << @user
      render json: @challenge
    else
      render json: @challenge.errors, status: 412
    end
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
