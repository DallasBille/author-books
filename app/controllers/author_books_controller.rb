class AuthorBooksController < ApplicationController

    def create
        @author_book = AuthorBook.create(get_params)
        redirect_to book_path(@author_book.book)
    end

private

    def get_params
        #byebug
        params.require(:author_book).permit(:author_id, :book_id)
    end
end
