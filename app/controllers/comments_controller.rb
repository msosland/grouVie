require 'json'
class CommentsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
  end

  def new
  end

  def create
    comment = JSON.parse(params.keys[0])["comment"]
    user_id = JSON.parse(params.keys[0])["userId"].to_i

    @comment = Comment.new(content: comment, group_id: params["group_id"].to_i, user_id: user_id)
    if @comment.save
      render json: @comment
    else
      render json: @comment.errors, status: 412
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

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
