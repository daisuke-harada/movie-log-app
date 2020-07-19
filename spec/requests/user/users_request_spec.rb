require 'rails_helper'

RSpec.describe "User::Users", type: :request do

  describe "ユーザー/ユーザー一覧ページ" do
    context "ユーザー/ユーザー一覧ページを正しく表示する"
    before do
      get user_users_path
    end

    it "リクエストは200okとなること" do
      expect(response.status).to eq 200
    end
  end

  describe "ユーザー/ユーザー詳細ページ" do
    context "ユーザー/ユーザー詳細ページを正しく表示する"
    before do
      @user = FactoryBot.create(:user)
      get user_user_path(@user)
    end

    it "リクエストは200okとなること" do
      expect(response.status).to eq 200
    end
  end

  describe "ユーザー/ユーザー編集ページ" do
    context "ユーザー/ユーザー編集ページを正しく表示する"
    before do
      @user = FactoryBot.create(:user)
      get edit_user_user_path(@user)
    end

    it "リクエストは200okとなること" do
      expect(response.status).to eq 200
    end
  end
end
