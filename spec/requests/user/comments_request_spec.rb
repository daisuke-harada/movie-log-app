require 'rails_helper'

RSpec.describe "User::Comments", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/user/comments/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/user/comments/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
