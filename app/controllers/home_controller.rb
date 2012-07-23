class HomeController < ApplicationController
  def index
    @posts = Post.order("created_at DESC")
    @welcome_elements = Element.select{|s| s.page == "Home" && s.section == "Welcome"}
    @attractions_elements = Element.select{|s| s.page == "Home" && s.section == "Attractions"}
    @worship_times = Element.select{|s| s.page == "Home" && s.section == "Worship"}
    @header_scripture = Element.find_by_section("Scripture")
  end

  def about
  end

  def contact
  end
end
