require 'rails_helper'

def build_contact
  {first_name: "Joe", last_name: "Smith", phone: "3035555555"}
end

RSpec.describe Api::V1::ContactsController, :type => :controller do

  describe "index" do
    it "returns http success" do
      get :index
      expect(response.status).to be(200)
    end
    it "returns all contacts" do
      contact = Contact.create(build_contact)
      get :index
      expect(assigns(:contacts)).to eq([contact])
    end
  end

  describe "create" do
    it "returns http success" do
      post :create, contact: build_contact
      expect(response).to have_http_status(:success)
    end
    it "creates the contact" do
      post :create, contact: build_contact
      expect(Contact.first.first_name).to eq("Joe")
    end
    it "returns the created contact" do
      post :create, contact: build_contact
      expect(assigns(:contact).first_name).to eq("Joe")
    end
  end

  describe "update" do
    before do
      @contact = Contact.create(build_contact)
      put :update, id: @contact.id, contact: {first_name: "John"}
    end
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
    it "updates the contact" do
      expect(@contact.reload.first_name).to eq("John")
    end
    it "returns the updated contact" do
      expect(assigns(:contact)).to eq(@contact)
    end
  end

  # describe "GET destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
