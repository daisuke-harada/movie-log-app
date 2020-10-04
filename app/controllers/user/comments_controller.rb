class User::CommentsController < ApplicationController
  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
    @comments = @review.comments.includes(:user)
    else
      render :error, status: :unprocessable_entity
    end
  end

  def index
    @user = current_user
    @review = Review.find(params[:review_id])
    @comment = Comment.new
    @comments = @review.comments.includes(:user)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:id, :body, :review_id, :user_id)
  end
end
