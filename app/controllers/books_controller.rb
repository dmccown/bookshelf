class BooksController < ApplicationController
  def index 
    @books = Book.paginate page: params[:page], per_page: 10
  end

  def show 
    @book = Book.find(params[:id])
    @comments = @book.comments.paginate :page => params[:page], :per_page => 10, :order => 'created_at ASC'  
  end
end
