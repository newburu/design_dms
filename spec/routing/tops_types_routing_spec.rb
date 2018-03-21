require "rails_helper"

RSpec.describe TopsTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tops_types").to route_to("tops_types#index")
    end

    it "routes to #new" do
      expect(:get => "/tops_types/new").to route_to("tops_types#new")
    end

    it "routes to #show" do
      expect(:get => "/tops_types/1").to route_to("tops_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tops_types/1/edit").to route_to("tops_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tops_types").to route_to("tops_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tops_types/1").to route_to("tops_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tops_types/1").to route_to("tops_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tops_types/1").to route_to("tops_types#destroy", :id => "1")
    end

  end
end
