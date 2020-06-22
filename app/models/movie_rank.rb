class MovieRank < ApplicationRecord
  belongs_to :user
  belongs_to :review

  enum rank_status: { "Myランキングに登録する。": 0, "1位": 1, "2位": 2, "3位": 3 }

  # def self.omit_first
  #   statuses.except(:"1位")
  # end

  # def self.omit_second
  #   statuses.except(:"2位")
  # end

  # def self.omit_third
  #   statuses.except(:"3位")
  # end

  # def self.only_first
  #   statuses.slice(:"Myランキングに登録する。", :"1位")
  # end

  # def self.only_second
  #   statuses.slice(:"Myランキングに登録する。", :"2位")
  # end

  # def self.only_third
  #   rank_statuses.slice(:"Myランキングに登録する。", :"3位")
  # end
end
