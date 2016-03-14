require 'json'
require 'base64'

class ParticipationsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
    image = JSON.parse(params.keys[0])["obj"].gsub(/\n/, '').gsub(' ', '+')
    image_data = Paperclip.io_adapters.for(image)
    @participation = Participation.find(44)
    @participation.update(image: image_data)
    render :json @participation
  end

  def destroy
  end
end
