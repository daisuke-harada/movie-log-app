require 'rails_helper'

RSpec.describe Relationship, type: :model do
  context "データが正しく保存される" do
    before do
      @user1 = FactoryBot.create(:user, id: 1)
      @user2 = FactoryBot.create(:user, id: 2, name: "koyo", email: "test2@icloud.com")
      @relationship = Relationship.new
      @relationship.follower_id = @user1.id
      @relationship.following_id = @user2.id
      @relationship.save
    end

    it "全て入力されてあるので保存される" do
      expect(@relationship).to be_valid
    end
  end
end
