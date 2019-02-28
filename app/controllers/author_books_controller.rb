class AuthorBooksController < ApplicationController

    def create
        @author_book = AuthorBook.create(get_params)
        redirect_to book_path(@author_book.book)
    end

    def destroy
        @author_book = AuthorBook.destroy(params[:id])
        redirect_to book_path(@author_book.book)
    end

private

    def get_params
        #byebug
        params.require(:author_book).permit(:author_id, :book_id)
        byebug
    end

    # def ab_params
    #     params.require(:author_book)
    #     byebug
    # end
end
