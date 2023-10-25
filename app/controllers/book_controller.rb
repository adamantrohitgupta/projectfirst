class BookController < ApplicationController
    def index
      
        @books = Book.all
    end
    def show
        @book = Book.find(params[:id])
        # render :inline => "<%= 1+2 %>"
        # # render plain: "OK"
        # render inline: "'Horrid coding practice!'}"
        # render html: helpers.tag.strong('Not Found')
        render "edit", variants: [:edit, :index]
        # render action: "show"
        # render inline: "Horrid coding practice"
        
        # render template: "book/edit"
         
    end

    def edit
        @book = Book.find(params[:id]) 

    end

    def update
        @book = Book.find(params[:id])
         
        if @book.update(book_params)
            redirect_to @book
        else
            # root_path
            # render :show
            # redirect_to @book
            render template: "book/show"
        end 
    end
    private
    def book_params
      params.require(:book).permit(:name)
    end
end
