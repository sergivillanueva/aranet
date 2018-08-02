class ContactsController < ApplicationController
  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_path(anchor: 'contacto'), notice: I18n.t(".thanks_for_contacting_us")
    else
      flash.now[:error] = I18n.t(".cannot_send_message")
      render "pages/contact"
      return
    end
  end
end
