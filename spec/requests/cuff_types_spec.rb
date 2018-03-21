require 'rails_helper'

RSpec.describe "CuffTypes", type: :request do
  describe "GET /cuff_types" do
    it "works! (now write some real specs)" do
      get cuff_types_path
      expect(response).to have_http_status(200)
    end
  end
end
