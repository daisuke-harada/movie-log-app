require 'rails_helper'

RSpec.describe "User::Reviews", type: :request do

  describe "GET /show" do
    it "returns http success" do
      get "/user/reviews/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/user/reviews/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/user/reviews/new"
      expect(response).to have_http_status(:success)
    end
  end

end
