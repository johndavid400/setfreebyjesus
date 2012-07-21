class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_posts

  def get_posts
    @posts = Post.all.take(3).reverse
  end
end
