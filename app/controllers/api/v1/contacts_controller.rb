class Api::V1::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render json: @contacts
  end

  def create
  end

  def update
  end

  def destroy
  end
end
