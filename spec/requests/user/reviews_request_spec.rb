require 'rails_helper'

RSpec.describe "User::Reviews", type: :request do
  let(:movie) { {id: 1, movie_image: "no_image.jpg", title: 'test1', summary: 'test1', a_movie_released: 'test1', show_time: 'test1'} }
  let(:comment) { {id: 1, review_id: 1, user_id: 1, body: 'test1'} }
  let(:review) { {id: 1, movie_id: 1, user_id: 1, content: 'test1', rate: 1, is_spoil: false} }

  describe "ユーザー/レビュー詳細ページ" do
    context "ユーザー/レビュー詳細ページが正しく表示される" do
      before do
        @movie = Movie.create(movie)
        @review = Review.create(review)
        get user_movie_review_path(id: @review.id, movie_id: @movie.id)
      end

      it "リクエストは200okとなること" do
        expect(response.status).to eq 200
      end
    end
  end

  describe "ユーザー/レビュー編集ページ" do
    context "ユーザー/レビュー編集ページが正しく表示される" do
      before do
        @movie = Movie.create(movie)
        @review = Review.create(review)
        get edit_user_movie_review_path(id: @review.id, movie_id: @movie.id)
      end

      it "リクエストは200okとなること" do
        expect(response.status).to eq 200
      end
    end
  end
end
