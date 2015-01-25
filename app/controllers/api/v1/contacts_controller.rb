class Api::V1::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render json: @contacts
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: @contact
    else
      render json: @contact.errors, status: 400
    end
  end

  def update
  end

  def destroy
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone)
  end

end
