class BooksController < ApplicationController
  def index
    @books = Book.all.includes(:author)
  end

  def new
    @book = Book.new
  end

  def create
    @book - Book.new(params[:book])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :synopsis, :reading_level, :isbn, :genre, :publication_date, :author_id, :cover)
  end
end
