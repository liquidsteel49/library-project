require "rails_helper"

RSpec.describe IllustratorsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/illustrators").to route_to("illustrators#index")
    end


    it "routes to #show" do
      expect(:get => "/illustrators/1").to route_to("illustrators#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/illustrators").to route_to("illustrators#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/illustrators/1").to route_to("illustrators#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/illustrators/1").to route_to("illustrators#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/illustrators/1").to route_to("illustrators#destroy", :id => "1")
    end

  end
end
