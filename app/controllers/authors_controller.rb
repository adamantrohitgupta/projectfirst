class AuthorsController < ApplicationController
  
  def index   
    @authors =Author.all
  end 

  def new
    @author = Author.new
    @author.books.build
  end

  def create
  #  debugger
  # byebug
   @author = Author.new(author_params)
   if @author.save
      redirect_to root_path
   end 
  end
  

  def show
    @book = Book.find(params[:id])
    if @book.nil?
      redirect_to  action: :index
    end
  end
  private
  def author_params
    params.require(:author).permit(:name, books_attributes:[:name,:price])
  end

end
