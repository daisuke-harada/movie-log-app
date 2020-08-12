class User::CommentsController < ApplicationController
  before_action :authenticate_member!

  def new
    @comment = Comment.new
  end

  def create
    @review = Review.find(params[:review_id])
    @comment = @review.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to user_movie_review_path(@review.movie.id, @review.id)
    else
      render :new
    end
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
