Bookshelf::Application.routes.draw do
  root 'books#index'
  resources :books do
    resource :comments, :only => :create
  end
end
