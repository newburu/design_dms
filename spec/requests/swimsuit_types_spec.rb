require 'rails_helper'

RSpec.describe "SwimsuitTypes", type: :request do
  describe "GET /swimsuit_types" do
    it "works! (now write some real specs)" do
      get swimsuit_types_path
      expect(response).to have_http_status(200)
    end
  end
end
