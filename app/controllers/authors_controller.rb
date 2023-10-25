class AuthorsController < ApplicationController
  
  def index
      # redirect_to root_path,status:301   
  end 

  def show
    @book = Book.find(params[:id])
    if @book.nil?
      redirect_to  action: :index
    end
  end
end
