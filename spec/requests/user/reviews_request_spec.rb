require 'rails_helper'

RSpec.describe "User::Reviews", type: :request do
  describe "ユーザー/レビュー詳細ページ" do
    context "ユーザー/レビュー詳細ページを正しく表示する" do
      before do
        @user = FactoryBot.create(:user)
        @movie = FactoryBot.create(:movie)
        @review = FactoryBot.create(:review, id: 1, movie_id: @movie.id, user_id: @user.id)
        get user_movie_review_path(id: @review, movie_id: @review)
      end

      it "リクエストは200okとなること" do
        expect(response.status).to eq 200
      end
    end
  end

    describe "ユーザー/レビュー編集ページ" do
    context "ユーザー/レビュー編集ページを正しく表示する" do
      before do
        @user = FactoryBot.create(:user)
        @movie = FactoryBot.create(:movie)
        @review = FactoryBot.create(:review, id: 1, movie_id: @movie.id, user_id: @user.id)
        get edit_user_movie_review_path(id: @review, movie_id: @review)
      end

      it "リクエストは200okとなること" do
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されていること" do
        expect(response.body).to include("レビュー編集ページ")
      end

      it "更新ボタンが正しく表示されていること" do
        expect(response.body).to include("更新する")
      end
    end
  end
end
