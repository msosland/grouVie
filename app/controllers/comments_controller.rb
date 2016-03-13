class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    p "==================="
    p comment_params
    @comment = Comment.new(comment_params)
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
