class User::UsersController < ApplicationController
  before_action :set_users, only: [:show, :edit, :update, :following, :followers]
  def index
    @users = User.all
  end

  def show
    @movie_rank = MovieRank.new
    @user = User.find(params[:id])
    @movie_ranks = @user.movie_ranks.order(:rank_status)
    @user_ranks = current_user.movie_ranks

    @omit_first = MovieRank.rank_statuses.except(:"1位").keys
    @omit_second = MovieRank.rank_statuses.except(:"2位").keys
    @omit_third = MovieRank.rank_statuses.except(:"3位").keys
    @only_first = MovieRank.rank_statuses.slice(:"1位").keys
    @only_second = MovieRank.rank_statuses.slice(:"2位").keys
    @only_third = MovieRank.rank_statuses.slice(:"3位").keys

    if @user_ranks.find_by(rank_status: "1")
      @rank = @omit_first
      if @user_ranks.find_by(rank_status: "1位") && @user_ranks.find_by(rank_status: "2")
        @rank = @only_third
      elsif @user_ranks.find_by(rank_status: "1位") && @user_ranks.find_by(rank_status: "3")
        @rank = @only_second
      end
    elsif @user_ranks.find_by(rank_status: "2")
      @rank = @omit_second
      if @user_ranks.find_by(rank_status: "1位") && @user_ranks.find_by(rank_status: "2")
        @rank = @only_third
      elsif @user_ranks.find_by(rank_status: "2位") && @user_ranks.find_by(rank_status: "3")
        @rank = @only_first
      end
    elsif @user_ranks.find_by(rank_status: "3")
      @rank = @omit_third
      if @user_ranks.find_by(rank_status: "2位") && @user_ranks.find_by(rank_status: "3")
        @rank = @only_first
      elsif @user_ranks.find_by(rank_status: "1位") && @user_ranks.find_by(rank_status: "3")
        @rank = @only_second
      end
    else
      @rank = MovieRank.rank_statuses.keys
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_user_path(@user)
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
    params.require(:user).permit(:name, :profile_image, :email)
  end

  def set_users
    @user = User.find(params[:id])
  end
end
