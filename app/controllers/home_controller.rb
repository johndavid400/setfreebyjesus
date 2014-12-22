class HomeController < ApplicationController

  def index
    # @welcome_elements = Element.select{|s| s.page == "Home" && s.section == "Welcome"}
    # @attractions_elements = Element.select{|s| s.page == "Home" && s.section == "Attractions"}
    # @worship_times = Element.select{|s| s.page == "Home" && s.section == "Worship"}
  end

  def about
    # @page_content = Element.find_by(page: "About")
    # render 'page_content'
  end

  def ministries
    # @page_content = Element.find_by(page: "Ministries")
    # render 'page_content'
  end

  def contact
    # @page_content = Element.find_by(page: "Contact")
    # render 'page_content'
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

  def donations
    # @page_content = Element.find_by(page: "Donations")
    # render 'page_content'
  end

  def page_content
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :subject, :message)
  end

end
