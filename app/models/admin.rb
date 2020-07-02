class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # 値が空の場合はバリデーションを実行しない
  validates :password, presence: true, allow_blank: true
  validates :email, :name, presence: true
end
