Rails.application.routes.draw do

    resources :authors
    resources :books, only: [:index, :show]
    resources :author_books, only: [:create, :destroy]

    # get 'books/index'
    # get 'books/show'

  # get 'author/index'
  # get 'author/show'
  # get 'author/edit'
  # get 'author/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
