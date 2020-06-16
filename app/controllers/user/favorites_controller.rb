class User::FavoritesController < ApplicationController
  before_action :set_reviews

  def favorite
    favorite = current_user.favorites.new(review_id: @review.id)
    favorite.save
  end

  def unfavorite
    favorite = current_user.favorites.find_by(review_id: @review.id)
    favorite.destroy
  end

  private

  def set_reviews
    @review = Review.find(params[:review_id])
  end

end
