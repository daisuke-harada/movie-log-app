require 'rails_helper'

RSpec.describe MovieGenre, type: :model do
  context "データが正しく保存される" do
    before do
      @movie = FactoryBot.create(:movie)
      @genre = FactoryBot.create(:genre)
      @movie_genre = MovieGenre.new
      @movie_genre.movie_id = @movie.id
      @movie_genre.genre_id = @genre.id
      @movie_genre.save
    end

    it "全て入力されてあるので保存される" do
      expect(@movie_genre).to be_valid
    end
  end
end
