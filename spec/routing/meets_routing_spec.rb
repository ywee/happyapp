require "spec_helper"

describe MeetsController do
  describe "routing" do

    it "routes to #index" do
      get("/meets").should route_to("meets#index")
    end

    it "routes to #new" do
      get("/meets/new").should route_to("meets#new")
    end

    it "routes to #show" do
      get("/meets/1").should route_to("meets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/meets/1/edit").should route_to("meets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/meets").should route_to("meets#create")
    end

    it "routes to #update" do
      put("/meets/1").should route_to("meets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/meets/1").should route_to("meets#destroy", :id => "1")
    end

  end
end
