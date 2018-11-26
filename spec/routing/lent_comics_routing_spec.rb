require "rails_helper"

RSpec.describe LentComicsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lent_comics").to route_to("lent_comics#index")
    end


    it "routes to #show" do
      expect(:get => "/lent_comics/1").to route_to("lent_comics#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/lent_comics").to route_to("lent_comics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lent_comics/1").to route_to("lent_comics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lent_comics/1").to route_to("lent_comics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lent_comics/1").to route_to("lent_comics#destroy", :id => "1")
    end

  end
end
