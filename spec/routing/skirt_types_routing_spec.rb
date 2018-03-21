require "rails_helper"

RSpec.describe SkirtTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/skirt_types").to route_to("skirt_types#index")
    end

    it "routes to #new" do
      expect(:get => "/skirt_types/new").to route_to("skirt_types#new")
    end

    it "routes to #show" do
      expect(:get => "/skirt_types/1").to route_to("skirt_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/skirt_types/1/edit").to route_to("skirt_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/skirt_types").to route_to("skirt_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/skirt_types/1").to route_to("skirt_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/skirt_types/1").to route_to("skirt_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/skirt_types/1").to route_to("skirt_types#destroy", :id => "1")
    end

  end
end
