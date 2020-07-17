require 'rails_helper'

RSpec.describe "User::Reviews", type: :request do
  describe "ユーザー/レビュー詳細ページ" do
    context "ユーザー/レビュー詳細ページを正しく表示する" do
      let(:movie) { {id: 1, movie_image: "no_image.jpg", title: 'test1', summary: 'test1', a_movie_released: 'test1', show_time: 'test1'} }
      let(:review) { {id: 1, movie_id: 1, user_id: 1, content: 'test1' } }

      before do
        @movie = Movie.create(movie)
        @review = Review.create(review)
        get user_movie_review_path(@movie.id, @review.id)
      end

      it "リクエストは200okとなること" do
        expect(response.status).to eq 200
      end
    end
  end
end
