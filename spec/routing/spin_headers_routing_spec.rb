require "rails_helper"

RSpec.describe SpinHeadersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/spin_headers").to route_to("spin_headers#index")
    end

    it "routes to #new" do
      expect(:get => "/spin_headers/new").to route_to("spin_headers#new")
    end

    it "routes to #show" do
      expect(:get => "/spin_headers/1").to route_to("spin_headers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/spin_headers/1/edit").to route_to("spin_headers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/spin_headers").to route_to("spin_headers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/spin_headers/1").to route_to("spin_headers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/spin_headers/1").to route_to("spin_headers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/spin_headers/1").to route_to("spin_headers#destroy", :id => "1")
    end

  end
end
