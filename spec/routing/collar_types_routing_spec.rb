require "rails_helper"

RSpec.describe CollarTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/collar_types").to route_to("collar_types#index")
    end

    it "routes to #new" do
      expect(:get => "/collar_types/new").to route_to("collar_types#new")
    end

    it "routes to #show" do
      expect(:get => "/collar_types/1").to route_to("collar_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/collar_types/1/edit").to route_to("collar_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/collar_types").to route_to("collar_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/collar_types/1").to route_to("collar_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/collar_types/1").to route_to("collar_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/collar_types/1").to route_to("collar_types#destroy", :id => "1")
    end

  end
end
