class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(Contact_params)
    if @contact.save
      redirect_to new_contact_path, notice: "Message sent."
    else
      redirect_to new_contact_path, notice: "Error occured."
    end
  end
  
end