require "rails_helper"

RSpec.describe SleeveTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sleeve_types").to route_to("sleeve_types#index")
    end

    it "routes to #new" do
      expect(:get => "/sleeve_types/new").to route_to("sleeve_types#new")
    end

    it "routes to #show" do
      expect(:get => "/sleeve_types/1").to route_to("sleeve_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sleeve_types/1/edit").to route_to("sleeve_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sleeve_types").to route_to("sleeve_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sleeve_types/1").to route_to("sleeve_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sleeve_types/1").to route_to("sleeve_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sleeve_types/1").to route_to("sleeve_types#destroy", :id => "1")
    end

  end
end
