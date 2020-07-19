require 'rails_helper'

RSpec.describe Favorite, type: :model do
  context "データが正しく保存される" do
    before do
      @user = FactoryBot.create(:user)
      @movie = FactoryBot.create(:movie)
      @review = FactoryBot.create(:review)
      @favorite = Favorite.new
      @favorite.user_id = @user.id
      @favorite.review_id = @review.id
      @favorite.save
    end

    it "全て入力されてあるので保存される" do
      expect(@favorite).to be_valid
    end
  end
end
