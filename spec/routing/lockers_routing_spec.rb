require "spec_helper"

describe LockersController do
  describe "routing" do

    it "routes to #index" do
      get("/lockers").should route_to("lockers#index")
    end

    it "routes to #new" do
      get("/lockers/new").should route_to("lockers#new")
    end

    it "routes to #show" do
      get("/lockers/1").should route_to("lockers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lockers/1/edit").should route_to("lockers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lockers").should route_to("lockers#create")
    end

    it "routes to #update" do
      put("/lockers/1").should route_to("lockers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lockers/1").should route_to("lockers#destroy", :id => "1")
    end

  end
end
