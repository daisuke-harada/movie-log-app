require 'rails_helper'

RSpec.describe "User::Genres", type: :request do
  describe "ユーザー/ジャンル一覧ページ" do
    context "ユーザー/ジャンル一覧ページが正しく表示される" do
      before do
        get user_genres_path
      end

      it "リクエストは200okとなること" do
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されていること" do
        expect(response.body).to include("ジャンル")
      end
    end
  end

  describe "ユーザー/ジャンル詳細ページ" do
    context "ユーザー/ジャンル詳細ページが正しく表示される" do
      before do
        @genre = FactoryBot.create(:genre)
        @movie = FactoryBot.create(:movie)
        @movies = @genre.movies
        get user_genre_path(@genre)
      end

      it "リクエストは200okとなること" do
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されていること" do
        expect(response.body).to include("作品一覧")
      end

      it "サイドバーのタイトルが正しく表示されていること" do
        expect(response.body).to include("ジャンル")
      end
    end
  end
end
