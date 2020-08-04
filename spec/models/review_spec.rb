require 'rails_helper'

RSpec.describe Review, type: :model do
  context "データが正しく保存される" do
    before do
      @user = FactoryBot.create(:user)
      @movie = FactoryBot.create(:movie)
      @review = Review.new
      @review.user_id = @user.id
      @review.movie_id = @movie.id
      @review.rate = 4.0
      @review.content = "とても感動しました。これから何度も見ていきたいです。"
      @review.save
    end

    it "全て入力されてあるので保存される" do
      expect(@review).to be_valid
    end
  end

  context "データが正しく保存されない" do
    before do
      @user = FactoryBot.create(:user)
      @movie = FactoryBot.create(:movie)
      @review = Review.new
      @review.user_id = @user.id
      @review.movie_id = @movie.id
      @review.rate = 4.0
      @review.content = "療養生活を送る老婦人(ジーナ・ローランズ)の元に、足繁く通う老人(ジェームズ・ガーナー)が、物語を読み聞かせる。 それは、1940年の夏、南部の小さな町で始まる物語。休暇を過ごしに都会からやって来た17歳の令嬢・アリー(レイチェル・マクアダムス)は、地元の製材所で働く青年ノア(ライアン・ゴズリング)と出逢い、恋に落ちる。 けれど、娘の将来を案じる両親に交際を阻まれ、都会へ連れ戻されてしまう。"
      @review.save
    end

    it "contentの文字数が100文字以上を超えているので保存されない" do
      expect(@review).to be_invalid
      expect(@review.errors[:content]).to include("は100文字以内で入力してください")
    end
  end
end
