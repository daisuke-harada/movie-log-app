require 'rails_helper'

RSpec.describe MovieRank, type: :model do
  context "データが正しく保存される" do
    before do
      @user = FactoryBot.create(:user)
      @movie = FactoryBot.create(:movie)
      @review = FactoryBot.create(:review)
      @movie_rank = MovieRank.new
      @movie_rank.user_id = @user.id
      @movie_rank.review_id = @review.id
      @movie_rank.rank_status = "1位"
      @movie_rank.save
    end

    it "全て入力されてあるので保存される" do
      expect(@movie_rank).to be_valid
    end
  end

  context "データが正しく保存されない" do
    before do
      @user = FactoryBot.create(:user)
      @movie = FactoryBot.create(:movie)
      @review = FactoryBot.create(:review)
      @movie_rank = MovieRank.new
      @movie_rank.user_id = @user.id
      @movie_rank.review_id = @review.id
      @movie_rank.rank_status = ""
      @movie_rank.save
    end

    it "rank_statusが入力されていないので保存されない" do
      expect(@movie_rank).to be_invalid
      expect(@movie_rank.errors[:rank_status]).to include("を入力してください")
    end
  end
end
