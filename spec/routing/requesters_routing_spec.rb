require "rails_helper"

RSpec.describe RequestersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/requesters").to route_to("requesters#index")
    end

    it "routes to #new" do
      expect(get: "/requesters/new").to route_to("requesters#new")
    end

    it "routes to #show" do
      expect(get: "/requesters/1").to route_to("requesters#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/requesters/1/edit").to route_to("requesters#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/requesters").to route_to("requesters#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/requesters/1").to route_to("requesters#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/requesters/1").to route_to("requesters#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/requesters/1").to route_to("requesters#destroy", id: "1")
    end
  end
end
