require 'rails_helper'

RSpec.describe "CollarTypes", type: :request do
  describe "GET /collar_types" do
    it "works! (now write some real specs)" do
      get collar_types_path
      expect(response).to have_http_status(200)
    end
  end
end
