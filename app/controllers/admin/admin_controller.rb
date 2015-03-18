class Admin::AdminController < ApplicationController
  before_filter :verify_admin
  protect_from_forgery

  private

  def verify_admin
    unless current_admin
      flash[:alert] = "You must be logged in to visit this page."
      redirect_to root_path
    end
  end

end
