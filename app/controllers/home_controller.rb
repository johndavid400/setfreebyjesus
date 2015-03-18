class HomeController < ApplicationController
  before_filter :get_element

  def index
  end

  def about_us
  end

  def contact
  end

  def ministries
  end

  def support
  end

  def products
  end

  def testimonials
  end

  def message
    if params[:contact][:email].present?
      Contact.create(contact_params)
      ContactMailer.submit_contact(params[:contact]).deliver
      flash[:notice] = "Your message was successfully delivered"
      redirect_to root_path
    else
      flash[:alert] = "You must enter an email address to submit this form."
      render 'contact'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end

  def get_element
    @element = Element.find_or_create_by(page: params[:action])
  end

end
