require 'rails_helper'

RSpec.describe Superviser, type: :model do
  context "データが正しく保存される" do
    before do
      @movie = FactoryBot.create(:movie)
      @superviser = Superviser.new
      @superviser.movie_id = @movie.id
      @superviser.superviser_name = "リュックベッソン"
      @superviser.save
    end

    it "全て入力されてあるので保存される" do
      expect(@superviser).to be_valid
    end
  end

  context "データが正しく保存されない" do
    before do
      @movie = FactoryBot.create(:movie)
      @superviser = Superviser.new
      @superviser.movie_id = @movie.id
      @superviser.superviser_name = ""
      @superviser.save
    end

    it "superviser_nameが入力されていないので保存されない" do
      expect(@superviser).to be_invalid
      expect(@superviser.errors[:superviser_name]).to include("を入力してください")
    end
  end
end
