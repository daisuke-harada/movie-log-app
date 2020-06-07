require 'rails_helper'

RSpec.describe "User::Movies", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/user/movies/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/user/movies/show"
      expect(response).to have_http_status(:success)
    end
  end

end
