require "rails_helper"

RSpec.describe CuffTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cuff_types").to route_to("cuff_types#index")
    end

    it "routes to #new" do
      expect(:get => "/cuff_types/new").to route_to("cuff_types#new")
    end

    it "routes to #show" do
      expect(:get => "/cuff_types/1").to route_to("cuff_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cuff_types/1/edit").to route_to("cuff_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cuff_types").to route_to("cuff_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cuff_types/1").to route_to("cuff_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cuff_types/1").to route_to("cuff_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cuff_types/1").to route_to("cuff_types#destroy", :id => "1")
    end

  end
end
