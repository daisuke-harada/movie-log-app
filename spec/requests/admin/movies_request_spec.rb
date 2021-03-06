require 'rails_helper'

RSpec.describe "Admin::Movies", type: :request do
  describe "管理者作品新規投稿ページ" do
    context "作品新規投稿ページが正しく表示される。" do
      before do
        @movie = FactoryBot.create(:movie)
        get new_admin_movie_path
      end

      it "リクエストは200 OKとなること" do
        expect(response.status).to eq 200
      end

      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("作品新規投稿")
      end

      it '上映時間が正しく表示されていること' do
        expect(response.body).to include("上映時間")
      end

      it '公開日が正しく表示されていること' do
        expect(response.body).to include("公開日")
      end

      it 'ジャンルが正しく表示されていること' do
        expect(response.body).to include("ジャンル")
      end

      it 'あらすじが正しく表示されていること' do
        expect(response.body).to include("あらすじ")
      end

      it '監督が正しく表示されていること' do
        expect(response.body).to include("監督")
      end

      it '脚本が正しく表示されていること' do
        expect(response.body).to include("脚本")
      end

      it 'キャストが正しく表示されていること' do
        expect(response.body).to include("キャスト")
      end
    end
  end

  describe "管理者作品詳細ページ" do
    context "管理者作品詳細ページが正しく表示される。" do
      before do
        @movie = FactoryBot.create(:movie)
        get admin_movie_path(@movie)
      end

      it "リクエストは200 OKとなること" do
        expect(response.status).to eq 200
      end

      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("映画詳細")
      end

      it 'タイトル名が正しく表示されていること' do
        expect(response.body).to include("アベンジャーズ")
      end

      it '編集ページへのリンクが正しく表示されているこ' do
        expect(response.body).to include("編集ページへ行く")
      end

      it 'ジャンルが正しく表示されていること' do
        expect(response.body).to include("ジャンル")
      end

      it 'あらすじが正しく表示されていること' do
        expect(response.body).to include("あらすじ")
      end

      it '監督が正しく表示されていること' do
        expect(response.body).to include("監督")
      end

      it '脚本が正しく表示されていること' do
        expect(response.body).to include("脚本")
      end

      it 'キャストが正しく表示されていること' do
        expect(response.body).to include("キャスト")
      end
    end
  end

  describe "管理者作品編集ページ" do
    context "管理者作品編集ページが正しく表示される。" do
      before do
        @movie = FactoryBot.create(:movie)
        get edit_admin_movie_path(@movie)
      end

      it "リクエストは200 OKとなること" do
        expect(response.status).to eq 200
      end

      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("映画編集ページ")
      end

      it '詳細ページへのリンクが正しく表示されているこ' do
        expect(response.body).to include("詳細ページへ戻る")
      end

      it '削除ボタンが正しく表示されているこ' do
        expect(response.body).to include("この映画を削除する")
      end

      it 'ジャンルが正しく表示されていること' do
        expect(response.body).to include("ジャンル")
      end

      it 'あらすじが正しく表示されていること' do
        expect(response.body).to include("あらすじ")
      end

      it '監督が正しく表示されていること' do
        expect(response.body).to include("監督")
      end

      it '脚本が正しく表示されていること' do
        expect(response.body).to include("脚本")
      end

      it 'キャストが正しく表示されていること' do
        expect(response.body).to include("キャスト")
      end

      it '更新ボタンが正しく表示されていること' do
        expect(response.body).to include("更新")
      end
    end
  end

  describe "管理者作品一覧ページ" do
    context "管理者作品一覧ページが正しく表示される。" do
      before do
        @movie = FactoryBot.create(:movie)
        @movies = Movie.all
        get admin_movies_path
      end

      it "リクエストは200 OKとなること" do
        expect(response.status).to eq 200
      end

      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("作品一覧")
      end

      it '映画のタイトルが正しく表示されていること' do
        expect(response.body).to include("アベンジャーズ")
      end

      it '映画の公開日が正しく表示されていること' do
        expect(response.body).to include("2012年8月14日")
      end

      it '映画の上映時間が正しく表示されていること' do
        expect(response.body).to include("120分")
      end

      it '詳細ページへのリンクが正しく表示されていること' do
        expect(response.body).to include("詳細を見る")
      end
    end
  end
end
