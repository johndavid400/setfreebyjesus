class ElementsController < ApplicationController
  before_action :set_element, only: [:show, :edit, :update, :destroy]

  def index
    @elements = Element.all
  end

  def new
    @element = Element.new
  end

  def create
    @element = Element.new(element_params)
    if @element.save
      flash[:notice] = "Element saved successfully"
      redirect_to elements_path
    else
      flash[:alert] = "Element failed to save, please try again"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @element.update_attributes(element_params)
      flash[:notice] = "Element saved successfully"
      redirect_to elements_path
    else
      flash[:alert] = "Element failed to update, please try again"
      render 'edit'
    end
  end

  def destroy
    if @element.destroy
      flash[:notice] = "Element deleted successfully"
    else
      flash[:alert] = "There was a problem deleting your Element"
    end
    redirect_to elements_path
  end

  private

  def set_element
    @element = Element.find(params[:id])
  end

  def element_params
    params.require(:element).permit(:title, :body, :page, :section)
  end

end
