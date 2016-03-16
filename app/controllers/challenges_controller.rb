class ChallengesController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
    group = Group.find(params[:group_id].to_i)
    @challenges = group.challenges
    render json: @challenges
  end

  def new
  end

  def create
    p params
    challenge_name = JSON.parse(params.keys[0])["challengeName"]
    challenge_description = JSON.parse(params.keys[0])["challengeDescription"]
    p start_date = Date.rfc3339(JSON.parse(params.keys[0])["startDate"])
    p end_date = Date.parse(JSON.parse(params.keys[0])["endDate"])
    p start_date.class
    user_id = JSON.parse(params.keys[0])["userId"].to_i
    @user = User.find_by(id: user_id)
    p @user

    @challenge = Challenge.new(name: challenge_name, description: challenge_description, group_id: params["group_id"].to_i, start_date: start_date, end_date: end_date)
    #
    @challenge.participants << @user

    if @challenge.save
      p @challenge
      render json: @challenge
    else
      p @challenge
      p @challenge.errors
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
