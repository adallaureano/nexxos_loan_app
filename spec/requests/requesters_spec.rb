 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/requesters", type: :request do
  # Requester. As you add validations to Requester, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Requester.create! valid_attributes
      get requesters_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      requester = Requester.create! valid_attributes
      get requester_url(requester)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_requester_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      requester = Requester.create! valid_attributes
      get edit_requester_url(requester)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Requester" do
        expect {
          post requesters_url, params: { requester: valid_attributes }
        }.to change(Requester, :count).by(1)
      end

      it "redirects to the created requester" do
        post requesters_url, params: { requester: valid_attributes }
        expect(response).to redirect_to(requester_url(Requester.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Requester" do
        expect {
          post requesters_url, params: { requester: invalid_attributes }
        }.to change(Requester, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post requesters_url, params: { requester: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested requester" do
        requester = Requester.create! valid_attributes
        patch requester_url(requester), params: { requester: new_attributes }
        requester.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the requester" do
        requester = Requester.create! valid_attributes
        patch requester_url(requester), params: { requester: new_attributes }
        requester.reload
        expect(response).to redirect_to(requester_url(requester))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        requester = Requester.create! valid_attributes
        patch requester_url(requester), params: { requester: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested requester" do
      requester = Requester.create! valid_attributes
      expect {
        delete requester_url(requester)
      }.to change(Requester, :count).by(-1)
    end

    it "redirects to the requesters list" do
      requester = Requester.create! valid_attributes
      delete requester_url(requester)
      expect(response).to redirect_to(requesters_url)
    end
  end
end
