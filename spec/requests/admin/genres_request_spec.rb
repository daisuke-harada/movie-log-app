require 'rails_helper'

RSpec.describe "Admin::Genres", type: :request do
  describe "管理者/ジャンル一覧ページ" do
    context "管理者/ジャンル一覧ページが正しく表示される。" do
      before do
        get admin_genres_path
      end

      it "リクエストは200 OKとなること" do
        expect(response.status).to eq 200
      end

      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("ジャンル")
      end

      it 'ジャンル新規登録が表示されていること' do
        expect(response.body).to include("ジャンル新規登録")
      end
    end
  end

  describe "管理者/ジャンル編集ページ" do
    context "管理者/ジャンル編集ページが正しく表示される。" do
      let(:params) { {id: 1, name: 'アクション'} }

      before do
        @genre = Genre.create(params)
        get edit_admin_genre_path(@genre)
      end

      it "リクエストは200 OKとなること" do
        expect(response.status).to eq 200
      end

      it 'タイトルが正しく表示されていること' do
        expect(response.body).to include("ジャンル編集")
      end
    end
  end
end
