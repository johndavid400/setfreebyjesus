class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_posts

  def get_posts
    #    @posts = Post.all.take(3).reverse
    #    @footer_posts = Post.order("created_at DESC").take(3)
    #    @header_scripture = Element.find_by_section("Scripture")
  end
end
