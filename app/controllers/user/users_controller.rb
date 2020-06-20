class User::UsersController < ApplicationController
  before_action :set_users, only: [:show, :edit, :following, :followers]
  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def following
    # @userがフォローしているユーザー
    @user.following
  end

  def followers
    # @userをフォローしているユーザー
    @user.followers
  end

  def quit
  end

  def out
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image_id, :email)
  end

  def set_users
    @user = User.find(params[:id])
  end
end