class User::CommentsController < ApplicationController
  def new
    @review = Review.find(params[:review_id])
    @comment = Comment.new
  end

  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to user_movie_path(@review.movie.id)
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
