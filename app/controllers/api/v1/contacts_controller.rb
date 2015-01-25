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
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
      render json: @contact
    else
      render json: @contact.errors, status: 400
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    if @contact.destroy
      head 200
    else
      render json: @contact.errors
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone)
  end

end
