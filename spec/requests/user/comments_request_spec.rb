require 'rails_helper'

RSpec.describe "User::Comments", type: :request do

  describe "ユーザー/コメント新規登録ページ" do
    context "ユーザー/コメント新規登録ページが正しく表示される" do
      let(:movie) { {id: 1, movie_image: "no_image.jpg", title: 'test1', summary: 'test1', a_movie_released: 'test1', show_time: 'test1'} }
      let(:review) { {id: 1, movie_id: 1, user_id: 1, content: 'test1', is_spoil: true } }
      before do
        @movie = Movie.create(movie)
        @review = Review.create(review)
        get new_user_movie_review_comment_path(movie_id: @movie.id, review_id: @review.id)
      end

      it "リクエストは200okとなること" do
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されていること" do
        expect(response.body).to include("コメント投稿ページ")
      end

      it "フォームのタイトルが正しく表示されていること" do
        expect(response.body).to include("コメント入力")
      end

      it "投稿ボタンが正しく表示されていること" do
        expect(response.body).to include("投稿する")
      end
    end
  end
end
