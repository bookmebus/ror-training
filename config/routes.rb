Rails.application.routes.draw do
  # get 'post/index'
  # NOTE: when use resouse name should be plural

  # scope route posts
  # nested route
  resources :posts do
    resources :comments
  end
  get 'posts/new', to: 'posts#new'
  root 'posts#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
