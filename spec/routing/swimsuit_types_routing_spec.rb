require "rails_helper"

RSpec.describe SwimsuitTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/swimsuit_types").to route_to("swimsuit_types#index")
    end

    it "routes to #new" do
      expect(:get => "/swimsuit_types/new").to route_to("swimsuit_types#new")
    end

    it "routes to #show" do
      expect(:get => "/swimsuit_types/1").to route_to("swimsuit_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/swimsuit_types/1/edit").to route_to("swimsuit_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/swimsuit_types").to route_to("swimsuit_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/swimsuit_types/1").to route_to("swimsuit_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/swimsuit_types/1").to route_to("swimsuit_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/swimsuit_types/1").to route_to("swimsuit_types#destroy", :id => "1")
    end

  end
end
