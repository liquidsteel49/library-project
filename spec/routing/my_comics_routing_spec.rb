require "rails_helper"

RSpec.describe MyComicsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/my_comics").to route_to("my_comics#index")
    end


    it "routes to #show" do
      expect(:get => "/my_comics/1").to route_to("my_comics#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/my_comics").to route_to("my_comics#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/my_comics/1").to route_to("my_comics#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/my_comics/1").to route_to("my_comics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/my_comics/1").to route_to("my_comics#destroy", :id => "1")
    end

  end
end
