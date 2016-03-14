require 'json'
require 'base64'

class ParticipationsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
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
    # p "***************************"
    # image = JSON.parse(params.keys[0])["obj"].gsub(/\n/, '').gsub(' ', '+')
    # p "***************************"
    # image_data = Paperclip.io_adapters.for(image)
    # @participation = Participation.find(5)
    # p @participation.image.url
    # p "***************************"
    # @participation.update(image: image_data)
    # p @participation.image.url
    # render :json @participation
  end

  def destroy
  end
end
