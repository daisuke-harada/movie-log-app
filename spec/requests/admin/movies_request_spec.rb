require 'rails_helper'

RSpec.describe "Admin::Movies", type: :request do

  describe "GET /new" do
    it "returns http success" do
      get "/admin/movies/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /index" do
    it "returns http success" do
      get "/admin/movies/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/admin/movies/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/admin/movies/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
