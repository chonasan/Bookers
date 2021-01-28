class BooksController < ApplicationController
  def new
  end
  
  def index
    @book = Book.new
  end

  def show
  end
  
  def create
    book = Book.new(blog_params)
    book.save
    redirect_to books_path
  end

  def edit
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
