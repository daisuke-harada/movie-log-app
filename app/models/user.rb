class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :following_relationships, foreign_key: "follower_id",
                                     class_name: "Relationship",
                                     dependent: :destroy
  has_many :following, through: :following_relationships
  has_many :follower_relationships, foreign_key: "following_id",
                                    class_name: "Relationship",
                                    dependent: :destroy
  has_many :followers, through: :follower_relationships
  has_many :reviews, dependent: :destroy
  has_many :movies, through: :reviews
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :movie_ranks, dependent: :destroy
  attachment :profile_image

  # 値が空の場合はバリデーションを実行しない
  validates :password, presence: true, allow_blank: true
  validates :email, :name, presence: true

  # 退会していないユーザーはログインできる。
  def active_for_authentication?
    super && (self.is_withdrawal == false)
  end

  # フォローしているかを確認するメソッド
  def following?(user)
    following_relationships.find_by(following_id: user.id)
  end

  # フォローするときのメソッド
  def follow(user)
    following_relationships.create!(following_id: user.id)
  end

  # フォローを外すときのメソッド
  def unfollow(user)
    following_relationships.find_by(following_id: user.id).destroy
  end

  def self.search(method, word)
    if method == "perfect_match"
      User.where("name LIKE?", "#{word}")
    elsif method == "partial_match"
      User.where("name LIKE?", "%#{word}%")
    end
  end
end
