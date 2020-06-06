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
        expect(response.body).to include("ジャンル一覧")
      end
    end
  end

  describe "管理者/ジャンル編集ページ" do
    before do
      @genre = { id: 1, name: 'ラブロマンス'}
    end

    context "管理者/ジャンル編集ページが正しく表示される。" do
      before do
        get edit_admin_genre_path(@genre.id)
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
