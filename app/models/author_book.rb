class AuthorBook < ApplicationRecord
    belongs_to :author
    belongs_to :book

    validates :author_id, uniqueness: {scope: :book, message: "Try again asshole!"}
    
end
