Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/users/sign_up' => 'devise/registrations/new#post'
    get '/users/login' => 'devise/sessions/new#post'
  end
  root to: "home#index"
end
