require 'rails_helper'

RSpec.describe Movie, type: :model do
  context "データが正しく保存される" do
    before do
      @movie = Movie.new
      @movie.title = "きみに読む物語"
      @movie.summary = "療養生活を送る老婦人(ジーナ・ローランズ)の元に、足繁く通う老人(ジェームズ・ガーナー)が、物語を読み聞かせる。
       それは、1940年の夏、南部の小さな町で始まる物語。休暇を過ごしに都会からやって来た17歳の令嬢・アリー(レイチェル・マクアダムス)は、
       地元の製材所で働く青年ノア(ライアン・ゴズリング)と出逢い、恋に落ちる。 けれど、娘の将来を案じる両親に交際を阻まれ、都会へ連れ戻されてしまう。
       (C)MMV NEW LINE HOME ENTERTAINMENT,INC. ALL RIGHTS RESERVED."
      @movie.a_movie_released = "2005年02月05日"
      @movie.show_time = "123分"
      @movie.save
    end

    it "全て入力されてあるので保存される" do
      expect(@movie).to be_valid
    end
  end

  context "データが正しく保存されない" do
    before do
      @movie = Movie.new
      @movie.title = ""
      @movie.summary = ""
      @movie.a_movie_released = ""
      @movie.show_time = ""
      @movie.save
    end

    it "titleが入力されていないので保存されない" do
      expect(@movie).to be_invalid
      expect(@movie.errors[:title]).to include("を入力してください")
    end

    it "sumaryが入力されていないので保存されない" do
      expect(@movie).to be_invalid
      expect(@movie.errors[:summary]).to include("を入力してください")
    end

    it "a_movie_releasedが入力されていないので保存されない" do
      expect(@movie).to be_invalid
      expect(@movie.errors[:a_movie_released]).to include("を入力してください")
    end

    it "showtimeが入力されていないので保存されない" do
      expect(@movie).to be_invalid
      expect(@movie.errors[:show_time]).to include("を入力してください")
    end
  end
end
