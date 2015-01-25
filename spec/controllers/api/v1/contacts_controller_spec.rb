require 'rails_helper'

RSpec.describe Api::V1::ContactsController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      contact = Contact.create
      get :index
      expect(assigns(:contacts)).to eq([contact])
    end
  end

  # describe "GET create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
