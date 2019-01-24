class ContactsController < ApplicationController
  def new
  end  
  def create
    @contacts = Contact.create(params_contact)
  end  
  private
  def params_contact
    params.require(:contact).permit(:email, :message)
  end

end
