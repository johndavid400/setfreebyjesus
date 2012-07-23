class HomeController < ApplicationController
  def index
    @welcome_elements = Element.select{|s| s.page == "Home" && s.section == "Welcome"}
    @attractions_elements = Element.select{|s| s.page == "Home" && s.section == "Attractions"}
    @worship_times = Element.select{|s| s.page == "Home" && s.section == "Worship"}
  end

  def about
  end

  def contact
  end
end
