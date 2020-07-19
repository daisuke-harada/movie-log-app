require 'rails_helper'

RSpec.describe Actor, type: :model do
  context "データが正しく保存される" do
    before do
      @movie = FactoryBot.create(:movie)
      @actor = Actor.new
      @actor.movie_id = @movie.id
      @actor.actor_name = "ロバートダウニーJr"
      @actor.save
    end

    it "全て入力されてあるので保存される" do
      expect(@actor).to be_valid
    end
  end

  context "データが正しく保存されない" do
    before do
      @movie = FactoryBot.create(:movie)
      @actor = Actor.new
      @actor.movie_id = @movie.id
      @actor.actor_name = ""
      @actor.save
    end

    it "actor_nameが入力されていないので保存されない" do
      expect(@actor).to be_invalid
      expect(@actor.errors[:actor_name]).to include("を入力してください")
    end
  end
end
