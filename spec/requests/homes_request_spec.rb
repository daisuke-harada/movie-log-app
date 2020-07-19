require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "homes/topページが表示される" do
    it "リクエストは200okとなること" do
      get root_path
      expect(response.status).to eq 200
    end
  end
end
