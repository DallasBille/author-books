class BooksController < ApplicationController
  def index
      @books = Book.all
  end

  def show
      get_book
      @authors = Author.all
      @author_book = AuthorBook.new
  end

  private

  def get_book
      @book = Book.find(params[:id])
  end
end
