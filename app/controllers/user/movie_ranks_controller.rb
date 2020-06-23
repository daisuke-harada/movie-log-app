class User::MovieRanksController < ApplicationController
  def create
    @movie_rank = MovieRank.new(movie_rank_params)
    @review = Review.find(params[:review_id])
    @movie_rank.review_id = @review.id
    @movie_rank.user_id = current_user.id
    @movie_rank.save
    redirect_to user_user_path(current_user)
  end

  def destroy
    @movie_rank = MovieRank.find(params[:id])
    @movie_rank.destroy
    redirect_to user_user_path(current_user)
  end

  private
  def movie_rank_params
    params.require(:movie_rank).permit(:id, :review_id, :user_id, :rank_status)
  end
end
