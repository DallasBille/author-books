class AuthorBooksController < ApplicationController

    def create
        @author_book = AuthorBook.create(get_params)
        byebug
        redirect_to books_path(author_id)
    end

private

    def get_params
        params.require(:author_books).permit(:author_id, :book_id)
    end
end
