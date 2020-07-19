require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "データが正しく保存される" do
    before do
      @user = FactoryBot.create(:user)
      @movie = FactoryBot.create(:movie)
      @review = FactoryBot.create(:review)
      @comment = Comment.new
      @comment.review_id = @review.id
      @comment.user_id = @user.id
      @comment.body = "test1"
      @comment.save
    end

    it "全て入力されてあるので保存される" do
      expect(@comment).to be_valid
    end
  end

  context "データが正しく保存されない" do
    before do
      @user = FactoryBot.create(:user)
      @movie = FactoryBot.create(:movie)
      @review = FactoryBot.create(:review)
      @comment = Comment.new
      @comment.review_id = @review.id
      @comment.user_id = @user.id
      @comment.body = ""
      @comment.save
    end

    it "bodyが入力されていないので保存されない" do
      expect(@comment).to be_invalid
      expect(@comment.errors[:body]).to include("を入力してください")
    end
  end
end
