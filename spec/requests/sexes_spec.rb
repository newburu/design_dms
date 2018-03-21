require 'rails_helper'

RSpec.describe "Sexes", type: :request do
  describe "GET /sexes" do
    it "works! (now write some real specs)" do
      get sexes_path
      expect(response).to have_http_status(200)
    end
  end
end
