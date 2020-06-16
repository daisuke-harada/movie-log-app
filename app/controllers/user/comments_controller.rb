class User::CommentsController < ApplicationController
  def new
    @review = Review.find(params[:review_id])
    # @movie = @review.movie.build([:movie_id])
    @comment = Comment.new
  end

  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.save
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
