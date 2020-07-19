require 'rails_helper'

RSpec.describe Writer, type: :model do
  context "データが正しく保存される" do
    before do
      @movie = FactoryBot.create(:movie)
      @writer = Writer.new
      @writer.movie_id = @movie.id
      @writer.writer_name = "クリストファー・マルクス"
      @writer.save
    end

    it "全て入力されてあるので保存される" do
      expect(@writer).to be_valid
    end
  end

  context "データが正しく保存されない" do
    before do
      @movie = FactoryBot.create(:movie)
      @writer = Writer.new
      @writer.movie_id = @movie.id
      @writer.writer_name = ""
      @writer.save
    end

    it "writer_nameが入力されていないので保存されない" do
      expect(@writer).to be_invalid
      expect(@writer.errors[:writer_name]).to include("を入力してください")
    end
  end
end
