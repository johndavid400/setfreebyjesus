class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def about
  end

  def contact
  end
end
