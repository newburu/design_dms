require 'rails_helper'

RSpec.describe "TopsTypes", type: :request do
  describe "GET /tops_types" do
    it "works! (now write some real specs)" do
      get tops_types_path
      expect(response).to have_http_status(200)
    end
  end
end
