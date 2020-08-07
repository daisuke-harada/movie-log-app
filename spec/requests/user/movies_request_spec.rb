require 'rails_helper'

RSpec.describe "User::Movies", type: :request do

  describe "ユーザー/映画一覧ページ" do
    context "ユーザー/映画一覧ページが正しく表示される" do
      before do
        @movie = FactoryBot.create(:movie)
        @movies = Movie.all
        get user_movies_path
      end

      it "リクエストは200okとなること" do
        expect(response.status).to eq 200
      end

      it "タイトルが正しく表示されていること" do
        expect(response.body).to include("作品一覧")
      end

      it "総合評価が正しく表示されていること" do
        expect(response.body).to include("総合評価")
      end

      it "登録数が正しく表示されていること" do
        expect(response.body).to include("登録数")
      end

      it "作品をチェックボタンが正しく表示されていること" do
        expect(response.body).to include("作品をcheck")
      end
    end
  end

  describe "ユーザー/映画詳細ページ" do
    before do
      @movie = Movie.create(movie)
      get user_movie_path(@movie)
    end

    context "ユーザー/映画詳細ページが正しく表示される" do
      it "リクエストは200okとなること" do
        expect(response.status).to eq 200
      end

      it "映画詳細の項目が正しく表示されていること" do
        expect(response.body).to include("総合スコア")
        expect(response.body).to include("登録数")
        expect(response.body).to include("上映日")
        expect(response.body).to include("ジャンル")
        expect(response.body).to include("あらすじ")
        expect(response.body).to include("監督")
        expect(response.body).to include("脚本")
        expect(response.body).to include("キャスト")
      end

      it "レビューステータスメニューが正しく表示されていること" do
        expect(response.body).to include("すべて")
        expect(response.body).to include("ネタバレなし")
        expect(response.body).to include("ネタバレあり")
      end
    end

    context "ユーザー/映画詳細ページ/モーダルページが正しく表示される" do
      it "タイトルが正しく表示されていること" do
        expect(response.body).to include("映画登録ページ")
      end

      it "フォームの項目タイトルが正しく表示されていること" do
        expect(response.body).to include("評価")
        expect(response.body).to include("感想")
        expect(response.body).to include("登録する")
      end

      it "フォームのボタンが正しく表示されていること" do
        expect(response.body).to include("⚠︎ネタバレあり")
        expect(response.body).to include("登録する")
      end
    end
  end

end
