class ElementsController < ApplicationController

  def index
    @elements = Element.all
  end

  def new
    @element = Element.new
  end

  def create
    @element = Element.new(params[:element])
    if @element.save
      flash[:notice] = "Element saved successfully"
      redirect_to elements_path
    else
      flash[:alert] = "Element failed to save, please try again"
      render 'new'
    end
  end

  def edit
    @element = Element.find(params[:id])
  end

  def update
    @element = Element.find(params[:id])
    if @element.update_attributes(params[:element])
      flash[:notice] = "Element saved successfully"
      redirect_to elements_path
    else
      flash[:alert] = "Element failed to update, please try again"
      render 'edit'
    end
  end

  def destroy
    @element = Element.find(params[:id])
    if @element.destroy
      flash[:notice] = "Element deleted successfully"
    else
      flash[:alert] = "There was a problem deleting your Element"
    end
    redirect_to elements_path
  end

end
