Rails.application.routes.draw do
  # get 'timelines/index'
  # get 'timelines/show'
  devise_for :users
  # devise_scope :user do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  #   get '/users/sign_up' => 'devise/registrations/new#post'
  #   get '/users/login' => 'devise/sessions/new#post'
  # end
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  # Registering the Paths of the TimelinesController
  authenticate :user do
    resources :timelines,
              only: %i[index show],
              # let’s tell the router to call the identifier as a username instead of an ID
              params: :username
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
