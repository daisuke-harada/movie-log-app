require 'rails_helper'

RSpec.describe "User::Reviews", type: :request do
  describe "ユーザー/レビュー編集ページ" do
    context "ユーザー/レビュー編集ページを正しく表示する" do
      before do
        @user = FactoryBot.create(:user)
        @movie = FactoryBot.create(:movie)
        @review = FactoryBot.create(:review, id: 1, movie_id: @movie.id, user_id: @user.id)
        get edit_user_movie_review_path(id: @review, movie_id: @review)
      end

      it "リクエストは302okとなること" do
        expect(response.status).to eq 302
      end
    end
  end
end
