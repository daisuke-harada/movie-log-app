require 'rails_helper'

RSpec.describe Movie, type: :model do
  context "データが正しく保存される" do
    before do
      @movie = Movie.new
      @movie.title = "きみに読む物語"
      @movie.summary = "療養生活を送る老婦人(ジーナ・ローランズ)の元に、足繁く通う老人(ジェームズ・ガーナー)が、物語を読み聞かせる。 それは、1940年の夏、南部の小さな町で始まる物語。休暇を過ごしに都会からやって来た17歳の令嬢・アリー(レイチェル・マクアダムス)は、地元の製材所で働く青年ノア(ライアン・ゴズリング)と出逢い、恋に落ちる。 けれど、娘の将来を案じる両親に交際を阻まれ、都会へ連れ戻されてしまう。 ノアは365日毎日手紙を書くが、一通の返信もないまま、やがて、第2次世界大戦が始まる…。(C)MMV NEW LINE HOME ENTERTAINMENT,INC. ALL RIGHTS RESERVED."
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
      @movie.summary = "療養生活を送る老婦人(ジーナ・ローランズ)の元に、足繁く通う老人(ジェームズ・ガーナー)が、物語を読み聞かせる。 それは、1940年の夏、南部の小さな町で始まる物語。休暇を過ごしに都会からやって来た17歳の令嬢・アリー(レイチェル・マクアダムス)は、地元の製材所で働く青年ノア(ライアン・ゴズリング)と出逢い、恋に落ちる。 けれど、娘の将来を案じる両親に交際を阻まれ、都会へ連れ戻されてしまう。 ノアは365日毎日手紙を書くが、一通の返信もないまま、やがて、第2次世界大戦が始まる…。(C)MMV NEW LINE HOME ENTERTAINMENT,INC. ALL RIGHTS RESERVED."
      @movie.save
    end
    it "titleが入力されていないので保存されない" do
      expect(@movie).to be_invalid
      expect(@movie.errors[:title]).to include("can't be blank")
    end
  end
end
