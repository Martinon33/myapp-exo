class BooksController < ApplicationController
  def index
    @les_livres = Book.all 
  end
  
  def show
    @le_livre = Book.find(params[:id])
   
  end

    def update
    @le_livre = Book.find(params[:id])
    @le_livre.title = params[:title]
    @le_livre.save 
    redirect_to "/books/#{params[:id]}"
      
  end
  
  def create    
    Book.create title: params[:title]
    redirect_to "/books"    
  end

  def destroy
    @le_livre = Book.find(params[:id])
    @le_livre.destroy
    redirect_to "/books"
  end

end
