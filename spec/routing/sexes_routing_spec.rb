require "rails_helper"

RSpec.describe SexesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sexes").to route_to("sexes#index")
    end

    it "routes to #new" do
      expect(:get => "/sexes/new").to route_to("sexes#new")
    end

    it "routes to #show" do
      expect(:get => "/sexes/1").to route_to("sexes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sexes/1/edit").to route_to("sexes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sexes").to route_to("sexes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sexes/1").to route_to("sexes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sexes/1").to route_to("sexes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sexes/1").to route_to("sexes#destroy", :id => "1")
    end

  end
end
