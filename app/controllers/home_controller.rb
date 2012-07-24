class HomeController < ApplicationController
  def index
    @welcome_elements = Element.select{|s| s.page == "Home" && s.section == "Welcome"}
    @attractions_elements = Element.select{|s| s.page == "Home" && s.section == "Attractions"}
    @worship_times = Element.select{|s| s.page == "Home" && s.section == "Worship"}
  end

  def about
    @page_content = Element.find_by_page("About")
    render 'page_content'
  end

  def ministries
    @page_content = Element.find_by_page("Ministries")
    render 'page_content'
  end

  def contact
    @page_content = Element.find_by_page("Contact")
    render 'page_content'
  end

  def donations
    @page_content = Element.find_by_page("Donations")
    render 'page_content'
  end

  def page_content
  end

end
