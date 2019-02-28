class BooksController < ApplicationController
  def index
      @books = Book.all
  end

  def show
      get_book
      @author_book = AuthorBook.new
      @authors = Author.all
  end

  private

  def get_book
      @book = Book.find(params[:id])
  end
end
