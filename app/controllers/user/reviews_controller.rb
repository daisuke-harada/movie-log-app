class User::ReviewsController < ApplicationController
  def edit
    if current_user
      @review = Review.find(params[:id])
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def show
    @movie = Movie.find(params[:movie_id])
    @review = Review.find(params[:id])
    @comments = @review.comments
  end

  def update
    @movie = Movie.find(params[:movie_id])
    reviews = Review.find(params[:id])
    @review_find = @movie.reviews.find_by(movie_id: @movie.id, id: reviews.id)
    @review_find.user_id = current_user.id
    if @review_find.update(review_params)
      redirect_to user_movie_path(@movie)
    else
      @review = Review.find(params[:id])
      flash.now[:error] = "⚠︎映画の感想の文字が100文字を超えています。感想の文字は100文字以内で書いてください"
      render :edit
    end
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.build(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to user_movie_path(@movie)
    else
      @review_new = Review.new
      @movie = Movie.find(params[:movie_id])
      @user = current_user
      flash.now[:error] = "⚠︎映画の感想の文字が100文字を超えています。感想の文字は100文字以内で書いてください"
      render template: "user/movies/show"
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def review_params
    params.require(:review).permit(:id, :movie_id, :user_id, :rate, :content, :is_spoil)
  end
end
