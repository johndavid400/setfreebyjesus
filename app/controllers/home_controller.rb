class HomeController < ApplicationController

  def index
    @welcome_elements = Element.select{|s| s.page == "Home" && s.section == "Welcome"}
    @attractions_elements = Element.select{|s| s.page == "Home" && s.section == "Attractions"}
    @worship_times = Element.select{|s| s.page == "Home" && s.section == "Worship"}
  end

  def about
    @page_content = Element.find_by(page: "About")
    # render 'page_content'
  end

  def ministries
    @page_content = Element.find_by(page: "Ministries")
    # render 'page_content'
  end

  def contact
    @page_content = Element.find_by(page: "Contact")
    # render 'page_content'
  end

  def message
    # TODO send message or something here
    flash[:notice] = "Your message was successfully delivered"
    redirect_to root_path
  end

  def donations
    @page_content = Element.find_by(page: "Donations")
    # render 'page_content'
  end

  def page_content
  end

end
